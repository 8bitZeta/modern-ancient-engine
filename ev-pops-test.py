import requests
from bs4 import BeautifulSoup
import glob

filenames = glob.glob("data/pokemon/base_stats/*/*.asm")
base_url = "https://pokemondb.net/pokedex/"

for filename in filenames:
    pokemon = filename.split("/")[4]
    pokemon = pokemon.replace(".asm", "")
    mod_url = base_url + pokemon + "/"

    healthp = "0"
    attack = "0"
    defense = "0"
    speed = "0"
    spatk = "0"
    spdef = "0"

    response = requests.get(mod_url)
    request = BeautifulSoup(response.text, "html.parser")
    evs = str(request.find("td", {"class": "text"})).replace("<td class=\"text\">\n", "").replace(", ", ",").replace(" </td>", "").split(",")

    for point in evs:
        gain = point.split()[0]
        if "Special Attack" in point:
            spatk = gain
        elif "Special Defense" in point:
            spdef = gain
        elif "Speed" in point:
            speed = gain
        elif "Defense" in point:
            defense = gain
        elif "Attack" in point:
            attack = gain;
        elif "HP" in point:
            healthp = gain;
    
    print("EV chart for %s:\n\t\t\t%s,   %s,   %s,   %s,   %s,   %s\n" % (pokemon, healthp, attack, defense, speed, spatk, spdef))
