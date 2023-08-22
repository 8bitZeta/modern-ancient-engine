"""
Script to detect duplicate code blocks in .asm files
Created by: OpenAI's ChatGPT with user vulcandth

Usage:
python duplicate_code.py <min_block_size> <max_block_size> <sort_method>

Arguments:
- min_block_size: Minimum size of code blocks to check for duplicates
- max_block_size: Maximum size of code blocks to check for duplicates
- sort_method: Method to sort the output. Can be either 'occurrences' or 'lines_then_occurrences'
"""

import os
import re
from collections import defaultdict
import concurrent.futures
import threading
import argparse

# Prepare the regex for comments and whitespace stripping
comment_regex = re.compile(r";.*$")  # Matches comments starting with ';'
whitespace_regex = re.compile(r"^\s+|\s+$")  # Matches leading and trailing whitespaces

# List of directories and files to exclude from processing
exclude_dirs = [
    './data/tilesets', 
    './data/collision', 
    './audio/music', 
    './gfx/tilesets', 
    './mobile', 
    './data/wild'
]
exclude_files = [
    './data/items/descriptions.asm', 
    './data/pokemon/gen1_order.asm', 
    './data/moves/effects.asm', 
    './data/trainers/attributes.asm', 
    './engine/overworld/load_map_part.asm'
]

# Dictionary to store code block hashes and their locations
duplicates = defaultdict(list)

# Lock to ensure thread safety when updating the dictionary
lock = threading.Lock()

def clean_line(line):
    """Strip comments and leading/trailing whitespace from a line"""
    line = comment_regex.sub('', line)  # Strip comments
    line = whitespace_regex.sub('', line)  # Strip leading and trailing whitespace
    return line

def process_file(filepath):
    """Process a single file, finding and storing all duplicate code blocks within the file"""
    with open(filepath, 'r') as f:
        lines = f.readlines()
        # Clean lines and keep track of original line numbers
        cleaned_lines = [(i+1, clean_line(line)) for i, line in enumerate(lines) if clean_line(line)]  # Ignore empty lines

        # Check for duplicate blocks of n lines, for n from min_block_size to max_block_size
        for n in range(min_block_size, min(max_block_size, len(cleaned_lines)) + 1):
            for i in range(len(cleaned_lines) - n + 1):
                block = tuple(line for _, line in cleaned_lines[i:i+n])
                block_hash = hash(block)
                with lock:
                    duplicates[block_hash].append((block, filepath, cleaned_lines[i][0]))  # Use original line number

# Parse command-line arguments
parser = argparse.ArgumentParser(description='Find duplicate code blocks in .asm files.')
parser.add_argument('min_block_size', type=int, help='Minimum size of code blocks to check for duplicates.')
parser.add_argument('max_block_size', type=int, help='Maximum size of code blocks to check for duplicates.')
parser.add_argument('sort_method', choices=['occurrences', 'lines_then_occurrences'], help='Method to sort the output.')
args = parser.parse_args()

min_block_size = args.min_block_size
max_block_size = args.max_block_size

# Iterate over all .asm files in the directory and its subdirectories, excluding specified directories and files
with concurrent.futures.ThreadPoolExecutor() as executor:
    for dirpath, dirnames, filenames in os.walk('.'):
        # Skip excluded directories
        if any(dirpath.startswith(ed) for ed in exclude_dirs):
            continue

        filepaths = [os.path.join(dirpath, filename) for filename in filenames if filename.endswith('.asm') and os.path.join(dirpath, filename) not in exclude_files]
        executor.map(process_file, filepaths)

# Sorting the duplicate instances by the selected method
if args.sort_method == 'occurrences':
    sorted_duplicates = sorted(duplicates.items(), key=lambda x: len(x[1]), reverse=True)
elif args.sort_method == 'lines_then_occurrences':
    sorted_duplicates = sorted(duplicates.items(), key=lambda x: (len(x[1][0][0]), len(x[1])), reverse=True)

# Print out the duplicates and their locations
for block_hash, instances in sorted_duplicates:
    if len(instances) > 1:
        block_str = '\n'.join(instances[0][0])
        print(f"Duplicate code block found:\n{block_str}")
        for instance in instances:
            block, filepath, line = instance
            print(f"In file {filepath}, starting at line {line}")
        print()
