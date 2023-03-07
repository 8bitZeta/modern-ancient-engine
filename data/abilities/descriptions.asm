; These directly correspond to the constants in "constants\ability_constants.asm"
AbilityDescriptions:
    dw CacophonyDesc
    dw StenchDesc
    dw DrizzleDesc
    dw SpeedBoostDesc
    dw BattleArmorDesc
    dw ShellArmorDesc
    dw SturdyDesc
    dw DampDesc
    dw LimberDesc
    dw SandVeilDesc
    dw StaticDesc
    dw VoltAbsorbDesc
    dw WaterAbsorbDesc
    dw ObliviousDesc
    dw CloudNineDesc
    dw AirLockDesc
    dw CompoundEyesDesc
    dw InsomniaDesc
    dw VitalSpiritDesc
    dw ColorChangeDesc
    dw ImmunityDesc
    dw FlashFireDesc
    dw ShieldDustDesc
    dw OwnTempoDesc
    dw SuctionCupsDesc
    dw IntimidateDesc
    dw ShadowTagDesc
    dw ArenaTrapDesc
    dw RoughSkinDesc
    dw WonderGuardDesc
    dw LevitateDesc
    dw EffectSporeDesc
    dw SynchronizeDesc
    dw ClearBodyDesc
    dw WhiteSmokeDesc
    dw NaturalCureDesc
    dw LightningRodDesc
    dw SereneGraceDesc
    dw SwiftSwimDesc
    dw ChlorophyllDesc
    dw IlluminateDesc
    dw TraceDesc
    dw HugePowerDesc
    dw PurePowerDesc
    dw PoisonPointDesc
    dw InnerFocusDesc
    dw MagmaArmorDesc
    dw WaterVeilDesc
    dw MagnetPullDesc
    dw SoundproofDesc
    dw RainDishDesc
    dw SandStreamDesc
    dw PressureDesc
    dw ThickFatDesc
    dw EarlyBirdDesc
    dw FlameBodyDesc
    dw RunAwayDesc
    dw KeenEyeDesc
    dw HyperCutterDesc
    dw PickupDesc
    dw TruantDesc
    dw HustleDesc
    dw CuteCharmDesc
    dw ForecastDesc
    dw StickyHoldDesc
    dw ShedSkinDesc
    dw GutsDesc
    dw MarvelScaleDesc
    dw LiquidOozeDesc
    dw OvergrowDesc
    dw BlazeDesc
    dw TorrentDesc
    dw SwarmDesc
    dw RockHeadDesc
    dw DroughtDesc
    dw TangledFeetDesc
    dw MotorDriveDesc
    dw RivalryDesc
    dw SteadfastDesc
    dw SnowCloakDesc
    dw GluttonyDesc
    dw AngerPointDesc
    dw UnburdenDesc
    dw HeatproofDesc
    dw SimpleDesc
    dw DrySkinDesc
    dw DownloadDesc
    dw IronFistDesc
    dw PoisonHealDesc
    dw AdaptabilityDesc
    dw SkillLinkDesc
    dw HydrationDesc
    dw SolarPowerDesc
    dw QuickFeetDesc
    dw NormalizeDesc
    dw SniperDesc
    dw MagicGuardDesc
    dw NoGuardDesc
    dw StallDesc
    dw TechnicianDesc
    dw LeafGuardDesc
    dw KlutzDesc
    dw MoldBreakerDesc
    dw SuperLuckDesc
    dw AftermathDesc
    dw AnticipationDesc
    dw ForewarnDesc
    dw UnawareDesc
    dw TintedLensDesc
    dw FilterDesc
    dw SolidRockDesc
    dw SlowStartDesc
    dw ScrappyDesc
    dw StormDrainDesc
    dw IceBodyDesc
    dw SnowWarningDesc
    dw HoneyGatherDesc
    dw FriskDesc
    dw RecklessDesc
    dw MultitypeDesc
    dw FlowerGiftDesc
    dw BadDreamsDesc
    dw DragonsMawDesc
    dw TransistorDesc
    dw PixilateDesc

CacophonyDesc:
    db    "No ability is"
    next1 "available.@"

StenchDesc:
    db    "Helps repel wild"
    next1 "#MON.@"

DrizzleDesc:
    db    "Causes heavy rain"
    next1 "upon entrance.@"

SpeedBoostDesc:
    db    "Constantly raises"
    next1 "the SPEED stat.@"

BattleArmorDesc:
ShellArmorDesc:
    db    "Prevents critical"
    next1 "hit damage.@"

SturdyDesc:
    db    "Nullifies 1-hit KO"
    next1 "attacks.@"

DampDesc:
    db    "Prevents explosive"
    next1 "moves.@"

LimberDesc:
    db    "Protects against"
    next1 "PARALYSIS.@"

SandVeilDesc:
    db    "Boosts EVASION in"
    next1 "SANDSTORMS.@"

StaticDesc:
    db    "May cause PARAL-"
    next1 "YSIS on contact.@"

VoltAbsorbDesc:
    db    "Abosorbs ELECTRIC"
    next1 "moves for HP.@"

WaterAbsorbDesc:
    db    "Absorbs WATER"
    next1 "moves for HP.@"

ObliviousDesc:
    db    "Protects against"
    next1 "INFATUATION.@"

CloudNineDesc:
AirLockDesc:
    db    "Protects against"
    next1 "weather effects.@"

CompoundEyesDesc:
    db    "Boosts ACCURACY"
    next1 "of moves.@"

InsomniaDesc:
VitalSpiritDesc:
    db    "Protects against"
    next1 "SLEEP.@"

ColorChangeDesc:
    db    "Matches type of"
    next1 "damaging moves.@"

ImmunityDesc:
    db    "Protects against"
    next1 "POISONING.@"

FlashFireDesc:
    db    "Absorbs FIRE"
    next1 "moves for power.@"

ShieldDustDesc:
    db    "Protects against"
    next1 "move effects.@"

OwnTempoDesc:
    db    "Protects against"
    next1 "CONFUSION.@"

SuctionCupsDesc:
    db    "Negates switching"
    next1 "out from moves.@"

IntimidateDesc:
    db    "Lowers the foe's"
    next1 "ATTACK.@"

ShadowTagDesc:
; EXCEPTION FOR ARENA TRAP - Pokémon with Levitate or Flying-type Pokémon can escape.
ArenaTrapDesc:
    db    "Prevents escape"
    next1 "from battle.@"

RoughSkinDesc:
    db    "Damages users of"
    next1 "physical moves.@"

WonderGuardDesc:
    db    "Only takes damage"
    next1 "from SE moves.@"

LevitateDesc:
    db    "Protects against"
    next1 "GROUND moves.@"

EffectSporeDesc:
    db    "May cause a status"
    next1 "effect on contact.@"

SynchronizeDesc:
    db    "Shares inflicted"
    next1 "status effects.@"

ClearBodyDesc:
WhiteSmokeDesc:
    db    "Protects against"
    next1 "stat loss.@"

NaturalCureDesc:
    db    "Cures statuses by"
    next1 "switching out.@"

LightningRodDesc:
    db    "Absorbs ELECTRIC"
    next1 "moves.@"

SereneGraceDesc:
    db    "Increases chances"
    next1 "of move effects.@"

SwiftSwimDesc:
    db    "Boosts SPEED in"
    next1 "rainy conditions.@"

ChlorophyllDesc:
    db    "Boosts SPEED in"
    next1 "sunny conditions.@"

IlluminateDesc:
    db    "Increases #MON"
    next1 "encounter rate.@"

TraceDesc:
    db    "Copies the foe's"
    next1 "ability.@"

HugePowerDesc:
PurePowerDesc:
    db    "Boosts ATTACK"
    next1 "of moves.@"

PoisonPointDesc:
    db    "May cause POISON-"
    next1 "ING on contact.@"

InnerFocusDesc:
    db    "Protects against"
    next1 "flinching.@"

MagmaArmorDesc:
    db    "Protects against"
    next1 "FREEZING.@"

WaterVeilDesc:
    db    "Protects against"
    next1 "BURNS.@"

MagnetPullDesc:
    db    "Prevents escape of"
    next1 "STEEL foes.@"

SoundproofDesc:
    db    "Protects against"
    next1 "acoustic moves.@"

RainDishDesc:
    db    "Restores HP in"
    next1 "rainy conditions.@"

SandStreamDesc:
    db    "Causes a sandstorm"
    next1 "upon entrance.@"

PressureDesc:
    db    "Increases PP usage"
    next1 "of attackers.@"

ThickFatDesc:
    db    "Resists ICE and"
    next1 "FIRE moves.@"

EarlyBirdDesc:
    db    "Wakes from SLEEP"
    next1 "quickly.@"

FlameBodyDesc:
    db    "May cause a BURN"
    next1 "on contact.@"

RunAwayDesc:
    db    "Guarantees escape"
    next1 "from battles.@"

KeenEyeDesc:
    db    "Protects against"
    next1 "ACCURACY loss.@"

HyperCutterDesc:
    db    "Protects against"
    next1 "ATTACK loss.@"

PickupDesc:
    db    "May find items"
    next1 "after battles.@"

TruantDesc:
    db    "Attacks only every"
    next1 "other turn.@"

HustleDesc:
    db    "Boosts ATTACK, but"
    next1 "lowers ACCURACY.@"

CuteCharmDesc:
    db    "May cause INFATU-"
    next1 "ATION on contact.@"

ForecastDesc:
    db    "Transforms upon"
    next1 "weather changes.@"

StickyHoldDesc:
    db    "Protects against"
    next1 "ITEM theft.@"

ShedSkinDesc:
    db    "May heal from"
    next1 "status effects.@"

GutsDesc:
    db    "Boosts ATTACK if"
    next1 "status afflicted.@"

MarvelScaleDesc:
    db    "Boosts DEFENSE if"
    next1 "status afflicted.@"

LiquidOozeDesc:
    db    "Damages users of"
    next1 "draining moves.@"

OvergrowDesc:
    db    "Boosts GRASS moves"
    next1 "in a pinch.@"

BlazeDesc:
    db    "Boosts FIRE moves"
    next1 "in a pinch.@"

TorrentDesc:
    db    "Boosts WATER moves"
    next1 "in a pinch.@"

SwarmDesc:
    db    "Boosts BUG moves"
    next1 "in a pinch.@"

RockHeadDesc:
    db    "Protects against"
    next1 "recoil.@"

DroughtDesc:
    db    "Causes harsh sun"
    next1 "upon entrance.@"

TangledFeetDesc:
    db    "Boosts EVASIVENESS"
    next1 "if CONFUSED.@"

MotorDriveDesc:
    db    "Boosts SPEED if"
    next1 "hit by electicity.@"

RivalryDesc:
    db    "Deals damage based"
    next1 "on foe's gender.@"

SteadfastDesc:
    db    "Boosts SPEED upon"
    next1 "flinching.@"

SnowCloakDesc:
    db    "Boosts EVASIVENESS"
    next1 "in HAIL.@"

GluttonyDesc:
    db    "Consumes BERRIES"
    next1 "early.@"

AngerPointDesc:
    db    "Maxes ATTACK on"
    next1 "critical-hit.@"

UnburdenDesc:
    db    "Boosts SPEED upon"
    next1 "held item usage.@"

HeatproofDesc:
    db    "Cuts the damage of"
    next1 "FIRE moves.@"

SimpleDesc:
    db    "Doubles all stat"
    next1 "changes.@"

DrySkinDesc:
    db    "Loses HP in heat,"
    next1 "gains HP in water.@"

DownloadDesc:
    db    "Tactically adjusts"
    next1 "damaging stats.@"

IronFistDesc:
    db    "Boosts power of"
    next1 "punching moves.@"

PoisonHealDesc:
    db    "Restores HP when"
    next1 "POISONED.@"

AdaptabilityDesc:
    db    "Increases STAB"
    next1 "damage.@"

SkillLinkDesc:
    db    "Multi-strike moves"
    next1 "hit all 5 times.@"

HydrationDesc:
    db    "Heals statuses in"
    next1 "rain.@"

SolarPowerDesc:
    db    "Raises SP.ATK in"
    next1 "sun, but cuts HP.@"

QuickFeetDesc:
    db    "Boosts SPEED if"
    next1 "status afflicted.@"

NormalizeDesc:
    db    "All moves become"
    next1 "NORMAL-type.@"

SniperDesc:
    db    "Boosts critical"
    next1 "hit damage.@"

MagicGuardDesc:
    db    "Protects against"
    next1 "indirect damage.@"

NoGuardDesc:
    db    "All moves will"
    next1 "hit.@"

StallDesc:
    db    "Always will move"
    next1 "last.@"

TechnicianDesc:
    db    "Boosts the weaker"
    next1 "moves.@"

LeafGuardDesc:
    db    "Protects against"
    next1 "statuses in sun.@"

KlutzDesc:
    db    "Cannot use held"
    next1 "items.@"

MoldBreakerDesc:
    db    "Ignores abilities"
    next1 "that block moves.@"

SuperLuckDesc:
    db    "Boosts critical"
    next1 "hit ratio.@"

AftermathDesc:
    db    "Damages attackers"
    next1 "upon fainting.@"

AnticipationDesc:
    db    "Senses dangerous"
    next1 "moves.@"

ForewarnDesc:
    db    "Detects a foe's"
    next1 "move.@"

UnawareDesc:
    db    "Ignores stat"
    next1 "changes.@"

TintedLensDesc:
    db    "Boosts 'not very"
    next1 "effective' moves.@"

FilterDesc:
SolidRockDesc:
    db    "Cuts the damage of"
    next1 "SE moves.@"

SlowStartDesc:
    db    "Temporarily halves"
    next1 "ATTACK and SPEED.@"

ScrappyDesc:
    db    "Hits GHOST #MON"
    next1 "with all moves.@"

StormDrainDesc:
    db    "Absorbs WATER"
    next1 "moves.@"

IceBodyDesc:
    db    "May cause FREEZING"
    next1 "on contact.@"

SnowWarningDesc:
    db    "Causes a hailstorm"
    next1 "upon entrance.@"

HoneyGatherDesc:
    db    "May find HONEY"
    next1 "after battles.@"

FriskDesc:
    db    "Identifies foe's"
    next1 "held ITEM.@"

RecklessDesc:
    db    "Boosts recoil"
    next1 "causing moves.@"

MultitypeDesc:
    db    "Changes type to"
    next1 "match held PLATE.@"

FlowerGiftDesc:
    db    "Powers up #MON"
    next1 "when sunny.@"

BadDreamsDesc:
    db    "Inflicts damage to"
    next1 "SLEEPING #MON.@"

DragonsMawDesc:
    db    "Boosts all DRAGON"
    next1 "moves.@"

TransistorDesc:
    db    "Boosts all ELEC-"
    next1 "TRIC moves.@"

PixilateDesc:
    db    "NORMAL moves become"
    next1 "FAIRY-type.@"
