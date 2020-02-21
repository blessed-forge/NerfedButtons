
# Check Reference Manual

For the latest check information type `/nb checks` in-game.

## Contents


1. [cd (VirtualCooldown)](#cd-VirtualCooldown) - Add a virtual cooldown to an ability
1. [st (Stack)](#st-Stack) - check if the target has the effect of the linked ability
1. [cm (CareerMechanic)](#cm-CareerMechanic) - check the amount of a career mechanic
1. [p (Pet)](#p-Pet) - check if you have a pet or not
1. [e (Effect)](#e-Effect) - check if you have the effect of a particular ability
1. [con (Condition)](#con-Condition) - check if a target has a condition
1. [ft (FriendlyTarget)](#ft-FriendlyTarget) - check if you have a friendly target
1. [et (EnemyTarget)](#et-EnemyTarget) - check if you have an enemy target
1. [com (Combat)](#com-Combat) - check if you're in combat
1. [hp (HitPoints)](#hp-HitPoints)  - check if you have an amount of hit points
1. [hpp (HitPointsPercent)](#hpp-HitPointsPercent) - check if the target has some % of hitpoints 
1. [ap (ActionPoints)](#ap-ActionPoints) - check if you have an amount of action points
1. [c (Career)](#c-Career) - check if a target has a specific career
1. [a (Archetype)](#a-Archetype) - check if a target is of an archetype
1. [mov (Movement)](#mov-Movement) - check if you're moving
1. [ae (AbilityEnabled)](#ae-AbilityEnabled) - check if the specified ability is enabled
1. [atv (AbilityTargetValid)](#atv-AbilityTargetValid) - check if an ability has a valid target
1. [acd (AbilityOnCooldown)](#acd-AbilityOnCooldown) - check if an ability is on cooldown


## cd (VirtualCooldown) 

Adds a virtual cooldown to that specific ability (in this
place of that sequence). The cooldown is target specific, but only the default
target is used to determine which target to affect the cooldown to, you can set
the default target either with the `/nb dt` command or by changing it in the
class file (see the archmage file for an example). 

### Usage

`cd:_cooldown_` 

  * cooldown: The length of the virtual cooldown.

### Example
```
/nb add 1 [Nature's Bond]cd:13[Ability 2][Ability 3]...
```
Apply the Natures bond HoT to your pet once every 13 seconds.


## st (Stack) 

Used to check if a target has the effect of the ability it is linked to.

### Usage

`st:_stack_:self:target:duration`

 * stack : _number_ - The max size of the effect stack you want. If the effect 
   doesn't stack use 1.
 * self : _s_ - _s_ if you want to check only effects given by yourself, leave
   blank otherwise. 
 * target : _f_, _e_ or _p_ - The mod will usually guess the target you want to
   check using the tags of the ability, but in some cases it doesn't work, so
   use _f_ (friendly target), _e_ (enemy target) or _p_ (player, yourself). If you
   always use the same option for an ability you can set it's default target
   either with the `/nb dt` command or by changing it in the class file (see the
   archmage file for an example). 
 * duration : _number_ - The duration at the end of the effect when
   the mod will ignore that the effect is applied, mostly useful to refresh
   debuffs before they run out.

### Example

`/nb add 1 [Fervor]st:3:s:e:2[Ability 2][Ability 3]...`

Keep 3 stacks of Fervor on your target and refreshes them 2 seconds before they
expire.


## cm (CareerMechanic) 

Checks whether you have a certain amount of career mechanic
or not. 

### Usage

`cm:mechanic:need` 
  * mechanic : _number_ - The value of your mechanic you want. For
archmage and shaman the values range from -5 to 5, negative values being one
type of magic, and positive the other, I can't remember which is which atm
though. 
  * need : `+` or `-` - `+` if you want the ability to show up when you have more 
than the value above, `-` when you have less (leaving this blank means +). 

## p (Pet) 

Checks whether you have a pet or not. Usage

`p:need` 
  * need : `+` or `-` - if you want the ability to show up when you have a pet, `-` if not. 


## e (Effect) 

Checks whether a target have the effect given by one of your
abilities. 

### Usage

`e:effect:stack:self:need:target` 
  * effect : _abilityID_ - The ID of the ability you
want to check the effect of (use `/nb id [abilityLink]` to get the id of an
ability). 
  * stack : _number_ - The max size of the effect stack you want. If the
effect doesn't stack use 1. 
  * self : _s_ - _s_ if you want to check only effects given by yourself, leave
    blank otherwise. 
  * need : `+` or `-` - `+` if you want the ability to show up when the 
    effect is on the target, `-` when it doesn't have it (leaving this 
    blank means `+`). 
  * target : _f_, _e_ or _p_ - The mod will usually guess the target you 
    want to check using the tags of the ability, but in some cases it doesn't 
    work, so use _f_ (friendly target), _e_ (enemy target) or _p_ (player, 
    yourself). If you always use the same option for an ability you can set 
    its default target either with the `/nb dt` command or
    by changing it in the class file (see the archmage file for an example).


## con (Condition) 

Checks whether a target has a specific condition. Additionally
you can check for the Unstoppable and Immovable buffs with this check. 

### Usage

`con:condition:need:target` 
  * condition : _conditionShortName_ - The condition you want to check for :
    * heal    = "isHealing" 
    * dbuf    = "isDebuff" 
    * buf     = "isBuff" 
    * def     = "isDefensive" 
    * off     = "isOffensive" 
    * dam     = "isDamaging" 
    * sbuf    = "isStatsBuff" 
    * hex     = "isHex" 
    * cur     = "isCurse" 
    * crip    = "isCripple" 
    * ail     = "isAilment" 
    * bols    = "isBolster" 
    * aug     = "isAugmentation" 
    * bless   = "isBlessing" 
    * ench    = "isEnchantment" 
    * unst    = "isUnstoppable" 
    * imm     = "isImmovable"

  * need : `+` or `-` - `+` if you want the ability to show up when the 
    target has the condition, `-` when it doesn't have it (leaving this blank means +). 
  * target : f, e or p -
      The mod will usually guess the target you want to check using the tags of
      the ability, but in some cases it doesn't work, so use _f_ (friendly
      target), _e_ (enemy target) or _p_ (player, yourself). If you always use the
      same option for an ability you can set it's default target either with
      the `/nb dt` command or by changing it in the class file (see the archmage
      file for an example). 


## ft (FriendlyTarget) 

Checks whether you have a friendly target. Usage

`ft:need`
  * need : `+` or `-` - `+` if you want the ability to show up when you 
    have a friendly target, `-` when you don't. 


## et (EnemyTarget) 

Checks whether you have an enemy target. Usage

`et:need` 
  * need : `+` or `-` - `+` if you want the ability to show up when you 
  have an enemy target, `-` when you don't. 

## com (Combat) 

Checks whether you are in combat. 

### Usage

 `com:need` 
  * need : `+` or `-` - `+` if you want the ability to show up when you are 
    in combat, `-` when you aren't. 


## hpp (HitPointsPercent)

Checks whether a target has a certain % of hp.

### Usage

 `hpp:hitpointspercent:need:target`
 
  * hitpointspercent : _number_ - The % of hp you want to check for.

  * need : `+` or `-` - `+` if you want the ability to show up when the target has more
    hp % than the value above, - when the target has less (leaving this blank
    means +).

  * target: _f_, _e_ or _p_ - The mod will usually guess the target you want to check
    using the tags of the ability, but in some cases it doesn't work, so use f
    (friendly target), _e_ (enemy target) or _p_ (player, yourself). If you always
    use the same option for an ability you can set it's default target either
    with the `/nb dt` command or by changing it in the class file (see the
    archmage file for an example).

## ap (ActionPoints)

Checks whether you have a certain amount of ap.

### Usage

`ap:actionpoints:need`

  * actionpoints : _number_ - The amount of ap you want to check for.

  * need : `+` or `-` - `+` if you want the ability to show up when you have more ap than the value above, - when you have less (leaving this blank means +).

## c (Career)

Checks whether a target is of a specific career.

### Usage

`c:career:need:target`

  * career : _careerShortName_ - The career you want to check for :

    * Ranged physical DPS

      * en  = GameData.CareerLine.ENGINEER
      * sw  = GameData.CareerLine.SHADOW_WARRIOR
      * sh  = GameData.CareerLine.SQUIG_HERDER

    * Tank

      * ib  = GameData.CareerLine.IRON_BREAKER
      * bg  = GameData.CareerLine.SHADE (Blackguard)
      * sm  = GameData.CareerLine.SWORDMASTER
      * bo  = GameData.CareerLine.BLACK_ORC
      * kbs = GameData.CareerLine.KNIGHT
      * chs = GameData.CareerLine.CHOSEN

    * Melee DPS

      * wh  = GameData.CareerLine.WITCH_HUNTER
      * we  = GameData.CareerLine.ASSASSIN
      * wl  = GameData.CareerLine.SEER (White Lion)
      * ma  = GameData.CareerLine.WARRIOR (Marauder)
      * sl  = GameData.CareerLine.SLAYER
      * chp = GameData.CareerLine.CHOPPA

    * Ranged support

      * am  = GameData.CareerLine.ARCHMAGE
      * sha = GameData.CareerLine.SHAMAN
      * rp  = GameData.CareerLine.RUNE_PRIEST
      * zlt = GameData.CareerLine.ZEALOT

    * Ranged magical DPS

      * bw  = GameData.CareerLine.BRIGHT_WIZARD
      * sor = GameData.CareerLine.SORCERER
      * mag = GameData.CareerLine.MAGUS

    * Melee support

      * wp  = GameData.CareerLine.WARRIOR_PRIEST
      * dok = GameData.CareerLine.BLOOD_PRIEST (Disciple of Khaine)

    * Other

      * npc = 0 (mobs)
      * obj = -1 (keep doors, ...)

  * need : `+` or `-` - `+` if you want the ability to show up when the target
    is of the specific career, - if it is not (leaving this blank means +).

  * target : _f_, _e_ or _p_ - The mod will usually guess the target you want
    to check using the tags of the ability, but in some cases it doesn't work,
    so use _f_ (friendly target), _e_ (enemy target) or _p_ (player, yourself). If
    you always use the same option for an ability you can set its default
    target either with the `/nb dt` command or by changing it in the class file
    (see the archmage file for an example). 


## a (Archetype)

Checks whether a target is of a specific archetype.

### Usage

`a:archetype:need:target`

  * archetype : _archetypeShortName_ - The archetype you want to check for :

    * Basic archetypes

      * "tank",   -- Tank
      * "mdps",   -- Melee DPS
      * "rpdps",  -- Ranged Physical DPS
      * "rmdps",  -- Ranged Magical DPS
      * "rsupp",  -- Ranged Support
      * "msupp",  -- Melee Support

    * Composite archetypes

      * "melee",  -- Melee
      * "cast",   -- Caster
      * "dps",    -- DPS
      * "pdps",   -- Physical DPS
      * "rdps",   -- Ranged DPS
      * "supp",   -- Support
      * "wu",     -- Weapon user (MELEE + RPDPS)

    * Other

      * "npc" -- (both npc and obj "careers")

  * need : `+` or `-` - `+` if you want the ability to show up when the target is of the specific archetype, - if it is not (leaving this blank means +).

  * target: _f_, _e_ or _p_ - The mod will usually guess the target you want to check
    using the tags of the ability, but in some cases it doesn't work, so use f
    (friendly target), _e_ (enemy target) or _p_ (player, yourself). If you always
    use the same option for an ability you can set it's default target either
    with the `/nb dt` command or by changing it in the class file (see the
    archmage file for an example).

## mov (Movement)

Checks whether you are moving.

### Usage

`mov:need`

  * need : `+` or `-` - `+` if you want the ability to show up when you are moving, - if you are not.

## ae (AbilityEnabled)

Checks whether one of your ability is enabled. This means if it is grayed in
the action bar or not, not related to cooldown or range. Use only for abilities
other than the one this is linked to, as it will be checked by default.

### Usage

`ae:ability:need`

  * ability : _abilityId_ - The ID of the ability you want to check.

  * need : `+` or `-` - `+` if you want the ability to show up when the ability above is
    enabled, - if not (leaving this blank means +).

## atv (AbilityTargetValid)

Checks whether one of your ability has a valid target. Use only for abilities
other than the one this is linked to, as it will be checked by default.

### Usage

`atv:ability:need`

  * ability : _abilityId_ - The ID of the ability you want to check.

  * need : `+` or `-` - `+` if you want the ability to show up when the ability above has
    a valid target, - if not (leaving this blank means +).

## acd (AbilityOnCooldown)

Checks whether one of your ability is on cooldown. Use only for abilities other
than the one this is linked to, as it will be checked by default.

### Usage

`acd:ability:need`

  * ability : _abilityId_ - The ID of the ability you want to check.

  * need : `+` or `-` - `+` if you want the ability to show up when the ability above is
    on cooldown, - if not (leaving this blank means +).

