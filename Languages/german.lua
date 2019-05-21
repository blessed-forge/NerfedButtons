NerfedTalks.LANGUAGES.german = {}

NerfedTalks.LANGUAGES.german["ABILITY_ERR"] = L"nb> Fertigkeitsfehler in der Abfolge"
NerfedTalks.LANGUAGES.german["BAD_CMDLN"] = L"nb> unbekannter Befehl: "
NerfedTalks.LANGUAGES.german["BAD_INIT"] = L"failed to initialize." -- Requires localization
NerfedTalks.LANGUAGES.german["BAD_LENGTH"] = L"Warning: You entered a command longer than the maximum characters allowed!" -- Requires localization
NerfedTalks.LANGUAGES.german["BAD_LIBSLASH"] = L"Warnung: NerfedButtons benötigt LibSlash V1.8++ !"
NerfedTalks.LANGUAGES.german["BAD_SLOT"] = L"Ungültiger Aktionsleistenplatz. Der gültige Bereich ist 1 - 60"
NerfedTalks.LANGUAGES.german["BINDING"] = L"NerfedButton wird festgelegt ..." -- Needs review
NerfedTalks.LANGUAGES.german["BIND_FAILED"] = L"nb> .. festlegen fehlgeschlagen." -- Needs review
NerfedTalks.LANGUAGES.german["CHB_ERR"] = L"nb> ChangeHotbar() fehlgeschlagen. Ungültiger Leistenplatz"
NerfedTalks.LANGUAGES.german["CLEARED"] = L"nb> Alle Charakter Einstellungen wurden zurückgesetzt."
NerfedTalks.LANGUAGES.german["CREDITS"] = L"NerfedButtons Credits\
\
I can't name everyone...  here is a selective list of key individuals who have been instrumental in bringing you NerfedButtons. Apologies to everyone I've missed:\
\
NerfedWar - Author (yup thats me) and Scaythe\
Huggu - Retired author who took the addon to a new level. Many thanks!\
Deuce, Tony - Testing, debugging and providing all kinds of help.\
NeuroGrey - Translations\
walla, hanshotfirst and everyone else who contributes on a regular basis to the forums.\
\
Have fun all!\
\
NerfedWar\
\
" -- Requires localization
NerfedTalks.LANGUAGES.german["DDC_LIST"] = L"nb> Liste der deaktivierten Standard Checks"
NerfedTalks.LANGUAGES.german["DDC_RESET"] = L"nb> Alle Standard Checks wieder aktiviert für die Fähigkeit "
NerfedTalks.LANGUAGES.german["DDC_SET"] = L"nb> Standard Check deaktiviert für die Fähigkeit"
NerfedTalks.LANGUAGES.german["DDC_UNSET"] = L"nb> Standard Check für wieder aktiviert für die Fähigkeit"
NerfedTalks.LANGUAGES.german["DT_CLEAR"] = L"nb> Alle Standard Ziele der Kommandozeile zurückgesetzt."
NerfedTalks.LANGUAGES.german["DT_LIST_1"] = L"nb> Liste der Standard Ziele :\
Standard Ziele festgelegt in den Karriere Dateien:"
NerfedTalks.LANGUAGES.german["DT_LIST_2"] = L"Standard Ziele der Kommandozeile :"
NerfedTalks.LANGUAGES.german["DT_RESET"] = L"nb> Standard Ziel zurückgesetzt für die Fähigkeit"
NerfedTalks.LANGUAGES.german["DT_SET"] = L"nb> Standard Ziel gesetzt für die Fähigkeit"
NerfedTalks.LANGUAGES.german["HELP_"] = L"NerfedButtons Basic Gebrauch:\
  /nb ui|add|del|list|edit|checks|params|effects|help|id|vcd|dt|macro|ddcheck|toggleblank|togglepages|togglefullsoc|credits <options>\
Tippe /nb help <command> für mehr Hilfe.\
Tippe /nb ui um die Konfiguration GUI anzuzeigen.\
\
Anleitungen und hilfreiches Diskussionsforum verfügbar unter:\
  http://www.nerfedwar.net/nerfedbuttons"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.a.description"] = L"Checks whether a target is of a specific archetype. " -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.a.example"] = L"/nba dd 1 [Ability1]a:wu:+:e[Ability2]\
\
Only use [Ability1] if your enemy is a weapon user." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.a.fullname"] = L"Archetype" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.acd.description"] = L"Checks whether one of your ability is on cooldown. Use only for abilities other than the one this is linked to, as it will be checked by default. " -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.acd.example"] = L"/nb add 1 [Ability1]acd:9999:+[Ability2]\
\
Only use Ability1 if another ability with an id of 9999 is on cooldown." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.acd.fullname"] = L"AbilityOnCooldown" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ae.description"] = L"Checks whether one of your ability is enabled. This means if it is grayed in the action bar or not, not related to cooldown or range. Use only for abilities other than the one this is linked to, as it will be checked by default." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ae.example"] = L"/nb add 1 [Sundering Chop]ae:9161:+[Hack]\
\
Only use [Sundering Chop] if another ability (9161 = Blindside) is enabled.\
\
This is useful as Blindside can only be used from behind, but Sundering Chop can be used from any position but only gets its bonus when used from behind. The AbilityTargetValid (atv) check is more suited in this case as ae also takes into account any other requirements of the ability such as action points..." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ae.fullname"] = L"AbilityEnabled" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ap.description"] = L"Checks whether you have a certain amount of ap. " -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ap.example"] = L"/nb add 1 [Ability1]ap:25:-[Ability2]\
\
Only use [Ability1] if you have less than 25 action points remaining.\
\
/nb add 1 [Ability1]ap:75:+[Ability2]\
\
Only use [Ability1] if you have more than 75 action points remaining." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ap.fullname"] = L"Aktionspunkte"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.atv.description"] = L"Checks whether one of your ability has a valid target. Use only for abilities other than the one this is linked to, as it will be checked by default. \
\
Ideal way to add a mandatory positional requirement to a skill that doesn't have one." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.atv.example"] = L"/nb add 1 [Sundering Chop]atv:9161:+[Hack]\
\
Only use [Sundering Chop] if another ability (9161 = Blindside) considers the target valid.\
\
This is useful as Blindside can only be used from behind, but Sundering Chop can be used from any position. Sundering Chop however only really shines when used from behind due to a bonus 50% armor penetration. The AbilityTargetValid check lets us link the positional requiremetns of Blindside to Sundering Chop :)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.atv.fullname"] = L"AbilityTargetValid" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.c.description"] = L"Checks whether a target is of a specific career.  Valid careers are:\
\
en,sw ,sh,ib ,bg,sm,bo,kbs,chs , wh,we,wl,ma,sl,chp,am,sha,rp,zlt ,bw,sor,mag,wp,dok\
\
" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.c.example"] = L"/nb add 1 [Ability1]c:bw:+:e[Ability2]\
\
Only use [Ability1] on Bright Wizard enemies." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.c.fullname"] = L"Karriere"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.cd.description"] = L"Adds a virtual cooldown to that specific ability (in this place of that sequence).\
The cooldown is target specific, but only the default target is used to determine which target to affect the cooldown to, you can set the default target either with the /nb dt command or by changing it in the class file (see the archmage file for an example)." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.cd.example"] = L"/nb add 1 [Nature's Bond]cd:13[Ability 2][Ability 3]...\
\
Apply the Natures bond HoT to your pet once every 13 seconds." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.cd.fullname"] = L"Virtuelle Abklingzeit"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.cm.description"] = L"Checks whether you have a certain amount of career mechanic points or not." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.cm.example"] = L"/nb add 1 [Meltdown]cm:90:+\
\
Use Meltdown if you get 90 or more points in the Bright Wizard combustion career mechanic." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.cm.fullname"] = L"CareerMechanic" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.com.description"] = L"Checks whether you are in combat. \
+ if you want the ability to show up when you are in combat, - when you aren't. " -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.com.example"] = L"/nb add 1 [Ability1]com:+ [Ability2]\
\
Use [Ability1] if you are in combat, otherwise [Ability2]." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.com.fullname"] = L"Kampf"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.con.description"] = L"Checks whether a target has a specific condition. Additionally you can check for the Unstoppable and Immovable buffs with this check.  Do a /nb params to see a list of supported conditions." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.con.example"] = L"/nb add 1 [Cauterize]con:hex:+:p\
\
Use cauterize if the player is hexed." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.con.fullname"] = L"Condition" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.e.description"] = L"Checks whether a target have the effect given by one of your abilities. " -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.e.example"] = L"/nb add 1 [Vigilance][Shining Blade];e:8034:1:s:-:p \
\
Use Shining Blade if Vigilance buff effect is not active." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.e.fullname"] = L"Effect" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.et.description"] = L"Checks whether you have an enemy target. \
+ if you want the ability to show up when you have an enemy target, - when you don't. " -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.et.example"] = L"/nb add 1 [Ability1]et:+[Ability2]et:-[Ability3]\
\
Use [Ability1] if you have an enemy target and the ability passes its basic checks, use Ability2 if you don't have an enemy target and it passes its basic checks, otherwise use [Ability3]." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.et.fullname"] = L"Feindliches Ziel"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ft.description"] = L"Checks whether you have a friendly target. Use the 's' flag to accept yourself as a valid friendly target if you are selected." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ft.example"] = L"/nb add 1 [Ability1]ft:+[Ability2]ft:-[Ability3]\
\
Use [Ability1] if you have a friendly target and the ability passes its basic checks, use Ability2 if you don't have a friendly  target and it passes its basic checks, otherwise use [Ability3]." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ft.fullname"] = L"Freundliches Ziel"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.hp.description"] = L"Checks whether you have a certain amount of hp. " -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.hp.example"] = L"/nb add 1 [Ability1]hp:500:+[Ability2]\
\
Only use [Ability1] if you have over 500 hit points." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.hp.fullname"] = L"Lebenspunkte"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.hpp.description"] = L"Checks whether a target has a certain % of hp." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.hpp.example"] = L"/nb add [Ability1]hpp:25:-:e[Ability2]\
\
Only use [Abilty1] if your enemy has under 25% of their hitpoints left." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.hpp.fullname"] = L"Lebenspunkte Prozente"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.iap.description"] = L"Checks whether you are a party or not." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.iap.example"] = L"/nb add 1 [Blessing Of Isha]iap:+\
\
Only use Blessing Of Isha if you are in a party." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.iap.fullname"] = L"In einer Gruppe"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ie.description"] = L"Checks whether one of your items is enabled. This means if it is grayed in the action bar or not, not related to cooldown or range. Use only for items other than the one this is linked to, as it will be checked by default." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ie.example"] = L"/nb add 1 [Ability1]ie:13402[Ability2]\
\
Only use Ability 1 if item with id 13402 is enabled.\
\
You can use /nb id [ItemLink] to obtain the id on an item." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.ie.fullname"] = L"ItemEnabled" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.imp.description"] = L"Checks whether your friendly target is in a party or not." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.imp.example"] = L"/nb add 1 [Mark of Daemonic Fury]imp:+\
\
Only use Mark of Daemonic Fury if your friendly target is in your party." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.imp.fullname"] = L"In meiner Gruppe"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.mov.description"] = L"Checks whether you are moving. " -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.mov.example"] = L"/nb add 1 [Lambent Aura]mov:+[Healing Energy]\
\
Use [Lambent Aura] is you are moving, otherwise use [Healing Energy]" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.mov.fullname"] = L"Movement" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.nam.description"] = L"Only use an action (item/ability etc...) if the test string provided can be found as part of its name." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.nam.example"] = L"/nb add 1 [Ability1]name:Mage:+:e[Ability2]\
\
Only use Ability1 if the name of the enemy contains the text \"Mage\".\
\
The text check is case sensitive." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.nam.fullname"] = L"Name"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.p.description"] = L"Checks whether you have a pet or not." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.p.example"] = L"/nb add 1 [Call War Lion]p:-\
\
Call a war lion pet if you don't have one" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.p.fullname"] = L"Begleiter"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.rvr.description"] = L"Checks whether you are flagged for RVR or not." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.rvr.example"] = L"/nb add 1 [Healing Potion]rvr:+\
\
Only use Healing Potion if you are flagged for RVR." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.rvr.fullname"] = L"RVR"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.sc.description"] = L"Checks whether you are a member of a scenario or not." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.sc.example"] = L"/nb add 1 [Meltdown]sc:+\
\
Only use Meltdown if you are a member of a scenario." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.sc.fullname"] = L"Szenario"
NerfedTalks.LANGUAGES.german["HELP_CHECKS.si.description"] = L"Checks whether you are enaged in a siege or not." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.si.example"] = L"/nb add 1 [Healing Potion]si:+\
\
Only use Healing Potion if you are engaged in a siege." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.si.fullname"] = L"Siege" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.st.description"] = L"Used to check if a target has the effect of the ability it is linked to. " -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.st.example"] = L"/nb add 1 [Fervor]st:3:s:e:2[Ability 2][Ability 3]...\
\
Keep 3 stacks of Fervor on your target and refreshes them 2 seconds before they expire." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.st.fullname"] = L"Stack" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.wb.description"] = L"Checks whether you are a member of a warband or not." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.wb.example"] = L"/nb add 1 [Meltdown]wb:+\
\
Only use Meltdown if you are a member of a warband." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS.wb.fullname"] = L"Kriegstrupp"
NerfedTalks.LANGUAGES.german["HELP_CHECKS_No_Description"] = L"No description available." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_CHECKS_No_Example"] = L"No example available." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.abilityId"] = L"number (The ID number of an ability, NOT a shift-click link)." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.ap"] = L"number (the required number of ap)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.archetype"] = L"One of the basic WAR archetypes or custom NerfedButtons defined archetypes:\
\
Basic archetypes\
\
    * \"tank\",   -- Tank\
    * \"mdps\",   -- Melee DPS\
    * \"rpdps\",  -- Ranged Physical DPS\
    * \"rmdps\",  -- Ranged Magical DPS\
    * \"rsupp\",  -- Ranged Support\
    * \"msupp\",  -- Melee Support\
\
Composite archetypes\
\
    * \"melee\",  -- Melee\
    * \"cast\",   -- Caster\
    * \"dps\",    -- DPS\
    * \"pdps\",   -- Physical DPS\
    * \"rdps\",   -- Ranged DPS\
    * \"supp\",   -- Support\
    * \"wu\",     -- Weapon user (MELEE + RPDPS)\
\
Other\
\
    * \"npc\" -- (both npc and obj \"careers\")" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.career"] = L"One of the WAR career types:\
\
Ranged physical DPS\
\
    * en  = GameData.CareerLine.ENGINEER\
    * sw  = GameData.CareerLine.SHADOW_WARRIOR\
    * sh  = GameData.CareerLine.SQUIG_HERDER\
\
Tank\
\
    * ib  = GameData.CareerLine.IRON_BREAKER\
    * bg  = GameData.CareerLine.SHADE (Blackguard)\
    * sm  = GameData.CareerLine.SWORDMASTER\
    * bo  = GameData.CareerLine.BLACK_ORC\
    * kbs = GameData.CareerLine.KNIGHT\
    * chs = GameData.CareerLine.CHOSEN\
\
Melee DPS\
\
    * wh  = GameData.CareerLine.WITCH_HUNTER\
    * we  = GameData.CareerLine.ASSASSIN\
    * wl  = GameData.CareerLine.SEER (White Lion)\
    * ma  = GameData.CareerLine.WARRIOR (Marauder)\
    * sl  = GameData.CareerLine.SLAYER\
    * chp = GameData.CareerLine.CHOPPA\
\
Ranged support\
\
    * am  = GameData.CareerLine.ARCHMAGE\
    * sha = GameData.CareerLine.SHAMAN\
    * rp  = GameData.CareerLine.RUNE_PRIEST\
    * zlt = GameData.CareerLine.ZEALOT\
\
Ranged magical DPS\
\
    * bw  = GameData.CareerLine.BRIGHT_WIZARD\
    * sor = GameData.CareerLine.SORCERER\
    * mag = GameData.CareerLine.MAGUS\
\
Melee support\
\
    * wp  = GameData.CareerLine.WARRIOR_PRIEST\
    * dok = GameData.CareerLine.BLOOD_PRIEST (Disciple of Khaine)\
\
Other\
\
    * npc = 0 (mobs)\
    * obj = -1 (keep doors, ...)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.condition"] = L"string (one of the following :)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.duration"] = L"number (duration at the end of the effect when the mod will ignore that the effect is applied, mostly useful to refresh debuffs before they run out.)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.effect"] = L"number (the id of an action)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.hp"] = L"number (the required number hp)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.hpPercent"] = L"number (the required percent of hp)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.itemId"] = L"The unique identifier for an item. Use /nb id [ItemLink] to retrieve the id for an item." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.mechanic"] = L"number (the required number of career mechanic points)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.need"] = L"+ or - (whether the check needs to be true (+) or false (-), skipping this means +)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.onlySelf"] = L"s or nothing (whether only player inflicted stacks are checked)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.stackCount"] = L"number (The ID number of an ability, NOT a link)." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_PARAMS.target"] = L"p (Spieler), f (freundliches Ziel) or e (feindliches Ziel)."
NerfedTalks.LANGUAGES.german["HELP_PARAMS.virtualCooldown"] = L"number (the virtual cooldown to use for that ability)" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_actions"] = L"Lists all the actions (abilities and items) with their corresponding action ids." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_add"] = L"/NB ADD <slotnumber>[<AbilityLink>[;<check>]*]+\
  The ; before the first test for an ability is optional.\
\
  If you are not familiar with regular expression, the line above means that after the <slotNumber> you can put one or more <AbilityLink>, and that after each one you can put as many <check> as you want (or 0), each separated by ;\
  The order of the checks is not important.\
\
  <slotnumber> = 1..48\
  <AbilityLink> = Ability from the Ability Window inserted with Shift-click\
  <check> = <shortName>[:<parameter>]+\
\
  The line above means that <check> must be the <shortName> of a check, followed by one or more parameters, each separated by :\
\
  The order of the parameters is very important, you always must input them in order, and even though you can forget the ones you don't want at the end of the parameters, you cannot skip one in the middle, to leave one blank in the middle you have to put the : for that parameter, and put the : for the following one right after it.\
\
  In the following examples the st is the short name for stack, the first parameter is the number of stacks, the second (that we skip in the second example) is the onlySelf flag, and the third is the target.\
<check> example 1: To set just one parameter in the begining : st:1\
<check> example 2: To skip a parameter in the middle : st:1::f\
\
  To get a list of available checks, their short name, and their parameters use the /nb checks command.\
  To get a list of the possible values for each parameter use the /nb params command.\
\
  More examples :\
example 1: /nb add 3[Brutal Assault]st:1:s[Grim Slash]\
example 2: /nb add 1[Consume Strength]st:1:s:f[Cleave Soul]\
example 3: /nb add 1[Absolution]cm:5[Fervor]st:3:s[Razor Strike]\
example 1: /nb add 2[Fervor]st:3:s[Fervor]cd:6[Razor Strike]\
example 2: /nb add 1[Acid Bomb]st:1:s;cd:2.245[Flashband Grenade]st:1:s" -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_checks"] = L"/NB CHECKS\
 Listet alle Checks mit Kurznamen und Parametern auf"
NerfedTalks.LANGUAGES.german["HELP_clear"] = L"Wipe out all NerfedButtons settings." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_conditions"] = L"Lists all the conditions on you (player), your friendly target, and your enemy." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_credits"] = L"List the authors and valuable contributors to the development of NerfedButtons." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_ddcheck"] = L"/NB DDCHECK list\
 Listet alle deaktivierten standard Checks auf die du gesetzt hast.\
/NB MACRO <FertigkeitenLink> [<CheckName>]\
 Schaltet standard Check <CheckName> für die verlinkte Fertigkeit an/aus\
 <FertigkeitenLink> = Fertigkeit für die du einen standard Check deaktivieren willst, verlinkt aus der Fertigkeitenfenster.\
 <CheckName> = (Optional) Name des standard Checks. Mögliche Werte sind : \
 enabled, target und cooldown. Falls nichts angegeben wird, werden alle deaktivierten Checks die die verlinkte Fertigkeit wieder aktiviert." -- Needs review
NerfedTalks.LANGUAGES.german["HELP_del"] = L"/NB DEL <PlatzNummer>\
 Löscht die Fertigkeiten Sequenz des Leistenplatzes <PlatzNummer>\
 Beispiel : /nb del 3"
NerfedTalks.LANGUAGES.german["HELP_dt"] = L"/NB DT list\
 Listet alle standard Ziele die du per Kommandozeile oder in Karriere Dateien gesetzt hast.\
/NB DT clear\
 Löscht alle standard Ziele die du per Kommandozeile gesetzt hast.\
/NB DT <FertigkeitenLink> [<Ziel>]\
 Setzt oder löscht ein standard Ziel für eine Fertigkeit\
 <FertigkeitenLink> = Fertigkeit eingefügt aus dem Fertigkeitenfenster mit Shift-Klick\
 <Ziel> = (Optional) Das standard Ziel für diese Fertigkeit. Falls nicht gesetzt, wird das standard Ziel, das per Kommandozeile gesetzt\
              wurde, gelöscht (betrifft nicht das standard Ziel aus den Karriere Dateien).\
"
NerfedTalks.LANGUAGES.german["HELP_edit"] = L"/NB EDIT <PlatzNummer>\
 Setzt die Kommandozeile die du für <PlatzNummer> gesetzt hast zurück in den Chat, für einfaches editieren.\
 <PlatzNummer> = 1..48"
NerfedTalks.LANGUAGES.german["HELP_effects"] = L"Lists all the effects on you (player), your friendly target, and your enemy. Very useful for obtaining IDs for ability effects." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_id"] = L"/NB ID <FertigkeitenLink>\
 Zeigt die FertigkeitenID für eine Fertigkeit im Chat Fenster"
NerfedTalks.LANGUAGES.german["HELP_list"] = L"/NB LIST\
 Listet alle gesetzten Aktionsleisten Platz Nummern\
/NB LIST all\
 Listet alle gesetzten Aktionsleisten Platz Nummern und Sequenzen\
/NB LIST <PlatzNummer>\
 Listet alle Fertigkeiten-Sequenzen des Platzes <PlatzNummer>\
 <PlatzNummer> = 1..48"
NerfedTalks.LANGUAGES.german["HELP_macro"] = L"/NB MACRO list\
 Listet alle Makros die am Ende einer Sequenz erscheinen sollen\
/NB MACRO <Aktionsleistenplatz> [<MakroNummer>]\
 Setzt oder entfernt ein Makro von einen Aktionsleistenplatz\
 <AktionsleistenPlatz> = Nummer der Platzes wo das Makro erscheinen soll\
 <MakroNummer> = (Optional) Nummer des Makros (1..42) das angezeit wird.\
 Falls keines angegeben wird, wird jegliches Makro das vorher auf dem Platz war entfernt."
NerfedTalks.LANGUAGES.german["HELP_params"] = L"/NB PARAMS\
 Zeigt die Liste der der Parameter und ihren möglichen Werten"
NerfedTalks.LANGUAGES.german["HELP_pcreate"] = L"/NB PCREATE <description>\
\
Create a new NB profile." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_pcur"] = L"/NB PCUR\
\
Returns the description of the current NB profile." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_pdel"] = L"/NB PDEL <profile id>\
\
Delete a profile by its ID." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_pdesc"] = L"/NB PDESC <description>\
\
Change the description of the current NB profile." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_pforcedel"] = L"/NB FORCEDEL <profile id>\
\
Forced deletion of a profile by its ID." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_plist"] = L"/NB PLIST\
\
List all available NB profiles." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_pswitch"] = L"/NB PSWITCH <profile id>\
\
Switch to a different NB profile." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_toggleautodismount"] = L"/NB TOGGLEAUTODISMOUNT\
\
Enabled or disabled NB sequences to trigger the autodismount addon." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_toggleblank"] = L"/NB TOGGLEBLANK\
  Toggles whether the last ability of a sequence (default) or a blank slot is displayed when no ability is ready." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_toggledisabled"] = L"/NB TOGGLEDISABLED\
\
Toggle whether the final ability in a sequence should be disabled if it fails its checks." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_togglefullsoc"] = L"/NB TOGGLEFULLSOC\
  Toggles whether StayOnCast will last for half a second (default) or for the full duration of the channeling." -- Requires localization
NerfedTalks.LANGUAGES.german["HELP_togglepages"] = L" \009/NB TOGGLEPAGES\
  Schaltet Aktionsleisten Seitenunterstützung an oder aus (standard).\
Wenn die Seitenunterstützung aktiviert ist, können jeder Seite der Hotbar andere Sequenzen zugewiesen werden." -- Needs review
NerfedTalks.LANGUAGES.german["HELP_vcd"] = L"/NB VCD list\
  Listet alle VCDs auf die gesetzt wurden.\
/NB VCD clear\
  Löscht alle VCDs die gesetzt wurden.\
/NB VCD <AbilityLink> [<cooldown>]\
  Fügt ein oder löscht einen karriereweiten Cooldown für diese Fähigkeit\
  <AbilityLink> = Fähigkeit aus dem Fähigkeitenfenster wird mit Shift-Klick hinzugefügt\
  <cooldown> = (Optional) Der Virtuelle Cooldown für diese Fähigkeit. Wenn kein Wert angegeben wird die karrierenweite Abklingzeit für diese Fähigkeit entfernt."
NerfedTalks.LANGUAGES.german["Immovable"] = L"Immovable" -- Requires localization
NerfedTalks.LANGUAGES.german["MACRO_LIST"] = L"nb> Listet alle betroffenen Makros auf :"
NerfedTalks.LANGUAGES.german["MACRO_RESET"] = L"nb> stellt alle Makros für diesen Platz zurück"
NerfedTalks.LANGUAGES.german["MACRO_SET"] = L"nb> Makro für diesen Platz gesetzt "
NerfedTalks.LANGUAGES.german["MSG1"] = L"gebe /NB ein für Hilfe!"
NerfedTalks.LANGUAGES.german["NOSEQS_BOUND"] = L"nb> keine Sequenz festgelegt"
NerfedTalks.LANGUAGES.german["NO_SEQ_BND"] = L"nb>  keine Sequenz festgelegt für diesen Platz"
NerfedTalks.LANGUAGES.german["OFF"] = L"aus"
NerfedTalks.LANGUAGES.german["ON"] = L"ein"
NerfedTalks.LANGUAGES.german["PARAMS_1"] = L"\
nb> Parameters and their possible values :\
  <abilityId> = number (The ID number of an ability, NOT a link).\
  <itemId> = number (The ID number of an item, NOT a link).\
  <target> = p (player), f (friendly target) or e (enemy target).\
  <stackCount> = number (maximum number of stack to have on the target)\
  <onlySelf> = s or nothing (whether only player inflicted stacks are checked)\
  <mechanic> = number (the required number of career mechanic)\
  <virtualCooldown> = number (the virtual cooldown to use for that ability)\
  <need> = + or - (whether the check needs to be true (+) or false (-), skipping this means +)\
  <check> = + or - (whether the value is greater (>=), equal-to (==) or less-than (<=), skipping this means ==)\
  <effect> = number (the id of an ability)\
  <condition> = string (one of the following :)\
  <hp> = number (the required number hp)\
  <hpPercent> = number (the required percent of hp)\
  <ap> = number (the required number of ap)\
  <duration> = number (duration at the end of the effect when the mod will ignore that the effect is applied, mostly useful to refresh debuffs before they run out.)\
  <text> = alphanumeric (the required name)\
  <tier> = the units difficulty tier (0 = Normal, 1 = Champion, 2 = Hero, 3+ = Boss)" -- Requires localization
NerfedTalks.LANGUAGES.german["PARAMS_2"] = L"  <career> = string (one of the following :)" -- Requires localization
NerfedTalks.LANGUAGES.german["PARAMS_3"] = L"  <archetype> = string (one of the following :)" -- Requires localization
NerfedTalks.LANGUAGES.german["PARAMS_4"] = L"  For more information on careers and archetypes see the NerfedAPI.lua file." -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pcreate"] = L"Please enter a description for the profile. Ex : /nb pcreate career - spec" -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pcreate2"] = L"NB created profile" -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pcur"] = L"Current NB profile :" -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pdel"] = L"NB profile doesn't exist." -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pdel2"] = L"NB profile in use by" -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pdel3"] = L"NB profile" -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pdel4"] = L"deleted" -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pdesc"] = L"Please enter a description for the profile. Ex : /nb pdesc career - respec" -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pforcedel"] = L"NB profile for current character can't be deleted, use /nb clear to empty the profile." -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pforcedel2"] = L"NB profile doesn't exist." -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_plist"] = L"Listing NB profiles :" -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pswitch"] = L"NB profile doesn't exist." -- Requires localization
NerfedTalks.LANGUAGES.german["PROFILE_pswitch2"] = L"NB profile switched to" -- Requires localization
NerfedTalks.LANGUAGES.german["SEQS_BOUND"] = L"nb> sequences bound to slot(s): " -- Requires localization
NerfedTalks.LANGUAGES.german["SEQS_FOUNDL"] = L" Sequence(s) found." -- Requires localization
NerfedTalks.LANGUAGES.german["SEQ_ERR"] = L"nb> no ability ready in Sequence #" -- Requires localization
NerfedTalks.LANGUAGES.german["UNBIND_SUCC"] = L"nb> unbind successfull." -- Requires localization
NerfedTalks.LANGUAGES.german["Unstoppable"] = L"Unstoppable" -- Requires localization
NerfedTalks.LANGUAGES.german["VCD_CLEAR"] = L"nb> All career-wide VCDs cleared." -- Requires localization
NerfedTalks.LANGUAGES.german["VCD_LIST"] = L"nb> List of career-wide VCDs :" -- Requires localization
NerfedTalks.LANGUAGES.german["VCD_RESET"] = L"nb> Career-wide cooldown reset for ability " -- Requires localization
NerfedTalks.LANGUAGES.german["VCD_SET"] = L"nb> Career-wide cooldown set for ability " -- Requires localization
NerfedTalks.LANGUAGES.german["Welcome"] = L"NerfedButtons wurde geladen. Tippe /NB für Hilfe!"
