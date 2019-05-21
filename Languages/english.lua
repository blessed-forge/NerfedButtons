NerfedTalks.LANGUAGES.english = {}

NerfedTalks.LANGUAGES.english["ABILITY_ERR"] = L"nb> ability error in sequence."
NerfedTalks.LANGUAGES.english["BAD_CMDLN"] = L"nb> unknown command: "
NerfedTalks.LANGUAGES.english["BAD_INIT"] = L"failed to initialize."
NerfedTalks.LANGUAGES.english["BAD_LENGTH"] = L"Warning: You entered a command longer than the maximum characters allowed!"
NerfedTalks.LANGUAGES.english["BAD_LIBSLASH"] = L"Warning: NerfedButtons needs LibSlash V1.8++ !"
NerfedTalks.LANGUAGES.english["BAD_SLOT"] = L"    Invalid hotbar slot. Valid range is 1 - 60."
NerfedTalks.LANGUAGES.english["BINDING"] = L"NerfedButton binding..."
NerfedTalks.LANGUAGES.english["BIND_FAILED"] = L"nb> ...bind failed."
NerfedTalks.LANGUAGES.english["CHB_ERR"] = L"nb> ChangeHotbar() failed. Invalid barSlot"
NerfedTalks.LANGUAGES.english["CLEARED"] = L"nb> all char settings cleared."
NerfedTalks.LANGUAGES.english["CREDITS"] = L"NerfedButtons Credits\
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
"
NerfedTalks.LANGUAGES.english["DDC_LIST"] = L"nb> List of disabled default checks :\
"
NerfedTalks.LANGUAGES.english["DDC_RESET"] = L"nb> All default checks re-enabled for ability "
NerfedTalks.LANGUAGES.english["DDC_SET"] = L"nb> Default check disabled for ability "
NerfedTalks.LANGUAGES.english["DDC_UNSET"] = L"nb> Default check re-enabled for ability "
NerfedTalks.LANGUAGES.english["DT_CLEAR"] = L"nb> All Default targets set by command line cleared."
NerfedTalks.LANGUAGES.english["DT_LIST_1"] = L"nb> List of Default targets :\
Default targets set in career files :"
NerfedTalks.LANGUAGES.english["DT_LIST_2"] = L"Default targets set by command line :"
NerfedTalks.LANGUAGES.english["DT_RESET"] = L"nb> Default target reset for ability "
NerfedTalks.LANGUAGES.english["DT_SET"] = L"nb> Default target set for ability "
NerfedTalks.LANGUAGES.english["HELP_"] = L"NerfedButtons Slash Commands:\
\
  /nb add | del | list | edit\
  /nb checks | params\
  /nb id | actions | effects | conditions\
  /nb vcd | dt | macro | ddcheck\
  /nb toggleblank | togglepages | togglefullsoc\
  /nb pcur | plist | pcreate | pdel | pforcedel | pswitch | pdesc \
  /nb credits\
\
enter /nb help <command> for more help.\
enter /nb ui to display the configuration GUI.\
\
Tutorials and the ever helpful discussion forum available at:\
  http://www.nerfedwar.net\
\
"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.a.description"] = L"Checks whether a target is of a specific archetype. "
NerfedTalks.LANGUAGES.english["HELP_CHECKS.a.example"] = L"/nba dd 1 [Ability1]a:wu:+:e[Ability2]\
\
Only use [Ability1] if your enemy is a weapon user."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.a.fullname"] = L"Archetype"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.acd.description"] = L"Checks whether one of your ability is on cooldown. Use only for abilities other than the one this is linked to, as it will be checked by default. "
NerfedTalks.LANGUAGES.english["HELP_CHECKS.acd.example"] = L"/nb add 1 [Ability1]acd:9999:+[Ability2]\
\
Only use Ability1 if another ability with an id of 9999 is on cooldown."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.acd.fullname"] = L"AbilityOnCooldown"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ae.description"] = L"Checks whether one of your ability is enabled. This means if it is grayed in the action bar or not, not related to cooldown or range. Use only for abilities other than the one this is linked to, as it will be checked by default."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ae.example"] = L"/nb add 1 [Sundering Chop]ae:9161:+[Hack]\
\
Only use [Sundering Chop] if another ability (9161 = Blindside) is enabled.\
\
This is useful as Blindside can only be used from behind, but Sundering Chop can be used from any position but only gets its bonus when used from behind. The AbilityTargetValid (atv) check is more suited in this case as ae also takes into account any other requirements of the ability such as action points..."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ae.fullname"] = L"AbilityEnabled"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ap.description"] = L"Checks whether you have a certain amount of ap. "
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ap.example"] = L"/nb add 1 [Ability1]ap:25:-[Ability2]\
\
Only use [Ability1] if you have less than 25 action points remaining.\
\
/nb add 1 [Ability1]ap:75:+[Ability2]\
\
Only use [Ability1] if you have more than 75 action points remaining."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ap.fullname"] = L"ActionPoints"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.atv.description"] = L"Checks whether one of your ability has a valid target. Use only for abilities other than the one this is linked to, as it will be checked by default. \
\
Ideal way to add a mandatory positional requirement to a skill that doesn't have one."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.atv.example"] = L"/nb add 1 [Sundering Chop]atv:9161:+[Hack]\
\
Only use [Sundering Chop] if another ability (9161 = Blindside) considers the target valid.\
\
This is useful as Blindside can only be used from behind, but Sundering Chop can be used from any position. Sundering Chop however only really shines when used from behind due to a bonus 50% armor penetration. The AbilityTargetValid check lets us link the positional requiremetns of Blindside to Sundering Chop :)"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.atv.fullname"] = L"AbilityTargetValid"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.c.description"] = L"Checks whether a target is of a specific career.  Valid careers are:\
\
en,sw ,sh,ib ,bg,sm,bo,kbs,chs , wh,we,wl,ma,sl,chp,am,sha,rp,zlt ,bw,sor,mag,wp,dok\
\
"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.c.example"] = L"/nb add 1 [Ability1]c:bw:+:e[Ability2]\
\
Only use [Ability1] on Bright Wizard enemies."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.c.fullname"] = L"Career"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.cd.description"] = L"Adds a virtual cooldown to that specific ability (in this place of that sequence).\
The cooldown is target specific, but only the default target is used to determine which target to affect the cooldown to, you can set the default target either with the /nb dt command or by changing it in the class file (see the archmage file for an example)."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.cd.example"] = L"/nb add 1 [Nature's Bond]cd:13[Ability 2][Ability 3]...\
\
Apply the Natures bond HoT to your pet once every 13 seconds."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.cd.fullname"] = L"VirtualCooldown"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.cm.description"] = L"Checks whether you have a certain amount of career mechanic points or not."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.cm.example"] = L"/nb add 1 [Meltdown]cm:90:+\
\
Use Meltdown if you get 90 or more points in the Bright Wizard combustion career mechanic."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.cm.fullname"] = L"CareerMechanic"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.com.description"] = L"Checks whether you are in combat. \
+ if you want the ability to show up when you are in combat, - when you aren't. "
NerfedTalks.LANGUAGES.english["HELP_CHECKS.com.example"] = L"/nb add 1 [Ability1]com:+ [Ability2]\
\
Use [Ability1] if you are in combat, otherwise [Ability2]."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.com.fullname"] = L"Combat"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.con.description"] = L"Checks whether a target has a specific condition. Additionally you can check for the Unstoppable and Immovable buffs with this check.  Do a /nb params to see a list of supported conditions."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.con.example"] = L"/nb add 1 [Cauterize]con:hex:+:p\
\
Use cauterize if the player is hexed."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.con.fullname"] = L"Condition"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.e.description"] = L"Checks whether a target have the effect given by one of your abilities. "
NerfedTalks.LANGUAGES.english["HELP_CHECKS.e.example"] = L"/nb add 1 [Vigilance][Shining Blade];e:8034:1:s:-:p \
\
Use Shining Blade if Vigilance buff effect is not active."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.e.fullname"] = L"Effect"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.et.description"] = L"Checks whether you have an enemy target. \
+ if you want the ability to show up when you have an enemy target, - when you don't. "
NerfedTalks.LANGUAGES.english["HELP_CHECKS.et.example"] = L"/nb add 1 [Ability1]et:+[Ability2]et:-[Ability3]\
\
Use [Ability1] if you have an enemy target and the ability passes its basic checks, use Ability2 if you don't have an enemy target and it passes its basic checks, otherwise use [Ability3]."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.et.fullname"] = L"EnemyTarget"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ft.description"] = L"Checks whether you have a friendly target. Use the 's' flag to accept yourself as a valid friendly target if you are selected."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ft.example"] = L"/nb add 1 [Ability1]ft:+[Ability2]ft:-[Ability3]\
\
Use [Ability1] if you have a friendly target and the ability passes its basic checks, use Ability2 if you don't have a friendly  target and it passes its basic checks, otherwise use [Ability3]."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ft.fullname"] = L"FriendlyTarget"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.hp.description"] = L"Checks whether you have a certain amount of hp. "
NerfedTalks.LANGUAGES.english["HELP_CHECKS.hp.example"] = L"/nb add 1 [Ability1]hp:500:+[Ability2]\
\
Only use [Ability1] if you have over 500 hit points."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.hp.fullname"] = L"HitPoints"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.hpp.description"] = L"Checks whether a target has a certain % of hp."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.hpp.example"] = L"/nb add [Ability1]hpp:25:-:e[Ability2]\
\
Only use [Abilty1] if your enemy has under 25% of their hitpoints left."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.hpp.fullname"] = L"HitPointsPercent"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.iap.description"] = L"Checks whether you are a party or not."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.iap.example"] = L"/nb add 1 [Blessing Of Isha]iap:+\
\
Only use Blessing Of Isha if you are in a party."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.iap.fullname"] = L"InAParty"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ie.description"] = L"Checks whether one of your items is enabled. This means if it is grayed in the action bar or not, not related to cooldown or range. Use only for items other than the one this is linked to, as it will be checked by default."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ie.example"] = L"/nb add 1 [Ability1]ie:13402[Ability2]\
\
Only use Ability 1 if item with id 13402 is enabled.\
\
You can use /nb id [ItemLink] to obtain the id on an item."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.ie.fullname"] = L"ItemEnabled"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.imp.description"] = L"Checks whether your friendly target is in a party or not."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.imp.example"] = L"/nb add 1 [Mark of Daemonic Fury]imp:+\
\
Only use Mark of Daemonic Fury if your friendly target is in your party."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.imp.fullname"] = L"InMyParty"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.mov.description"] = L"Checks whether you are moving. "
NerfedTalks.LANGUAGES.english["HELP_CHECKS.mov.example"] = L"/nb add 1 [Lambent Aura]mov:+[Healing Energy]\
\
Use [Lambent Aura] is you are moving, otherwise use [Healing Energy]"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.mov.fullname"] = L"Movement"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.nam.description"] = L"Only use an action (item/ability etc...) if the test string provided can be found as part of its name."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.nam.example"] = L"/nb add 1 [Ability1]name:Mage:+:e[Ability2]\
\
Only use Ability1 if the name of the enemy contains the text \"Mage\".\
\
The text check is case sensitive."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.nam.fullname"] = L"Name"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.p.description"] = L"Checks whether you have a pet or not."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.p.example"] = L"/nb add 1 [Call War Lion]p:-\
\
Call a war lion pet if you don't have one"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.p.fullname"] = L"Pet"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.rvr.description"] = L"Checks whether you are flagged for RVR or not."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.rvr.example"] = L"/nb add 1 [Healing Potion]rvr:+\
\
Only use Healing Potion if you are flagged for RVR."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.rvr.fullname"] = L"RVR"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.sc.description"] = L"Checks whether you are a member of a scenario or not."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.sc.example"] = L"/nb add 1 [Meltdown]sc:+\
\
Only use Meltdown if you are a member of a scenario."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.sc.fullname"] = L"Scenario"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.si.description"] = L"Checks whether you are enaged in a siege or not."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.si.example"] = L"/nb add 1 [Healing Potion]si:+\
\
Only use Healing Potion if you are engaged in a siege."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.si.fullname"] = L"Siege"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.st.description"] = L"Used to check if a target has the effect of the ability it is linked to. "
NerfedTalks.LANGUAGES.english["HELP_CHECKS.st.example"] = L"/nb add 1 [Fervor]st:3:s:e:2[Ability 2][Ability 3]...\
\
Keep 3 stacks of Fervor on your target and refreshes them 2 seconds before they expire."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.st.fullname"] = L"Stack"
NerfedTalks.LANGUAGES.english["HELP_CHECKS.wb.description"] = L"Checks whether you are a member of a warband or not."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.wb.example"] = L"/nb add 1 [Meltdown]wb:+\
\
Only use Meltdown if you are a member of a warband."
NerfedTalks.LANGUAGES.english["HELP_CHECKS.wb.fullname"] = L"WarBand"
NerfedTalks.LANGUAGES.english["HELP_CHECKS_No_Description"] = L"No description available."
NerfedTalks.LANGUAGES.english["HELP_CHECKS_No_Example"] = L"No example available."
NerfedTalks.LANGUAGES.english["HELP_PARAMS.abilityId"] = L"number (The ID number of an ability, NOT a shift-click link)."
NerfedTalks.LANGUAGES.english["HELP_PARAMS.ap"] = L"number (the required number of ap)"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.archetype"] = L"One of the basic WAR archetypes or custom NerfedButtons defined archetypes:\
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
    * \"npc\" -- (both npc and obj \"careers\")"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.career"] = L"One of the WAR career types:\
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
    * obj = -1 (keep doors, ...)"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.condition"] = L"string (one of the following :)"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.duration"] = L"number (duration at the end of the effect when the mod will ignore that the effect is applied, mostly useful to refresh debuffs before they run out.)"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.effect"] = L"number (the id of an action)"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.hp"] = L"number (the required number hp)"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.hpPercent"] = L"number (the required percent of hp)"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.itemId"] = L"The unique identifier for an item. Use /nb id [ItemLink] to retrieve the id for an item."
NerfedTalks.LANGUAGES.english["HELP_PARAMS.mechanic"] = L"number (the required number of career mechanic points)"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.need"] = L"+ or - (whether the check needs to be true (+) or false (-), skipping this means +)"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.onlySelf"] = L"s or nothing (whether only player inflicted stacks are checked)"
NerfedTalks.LANGUAGES.english["HELP_PARAMS.stackCount"] = L"number (The ID number of an ability, NOT a link)."
NerfedTalks.LANGUAGES.english["HELP_PARAMS.target"] = L"p (player), f (friendly target) or e (enemy target)."
NerfedTalks.LANGUAGES.english["HELP_PARAMS.virtualCooldown"] = L"number (the virtual cooldown to use for that ability)"
NerfedTalks.LANGUAGES.english["HELP_actions"] = L"Lists all the actions (abilities and items) with their corresponding action ids."
NerfedTalks.LANGUAGES.english["HELP_add"] = L"/NB ADD <slotnumber>[<AbilityLink>[;<check>]*]+\
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
example 2: /nb add 1[Acid Bomb]st:1:s;cd:2.245[Flashband Grenade]st:1:s"
NerfedTalks.LANGUAGES.english["HELP_checks"] = L"/NB CHECKS \
\194\160 lists all the checks available, their short name and their parameters.\
\
/NB CHECKS <check name>\
  provide detailed information regarding a specific check.\
  example: /nb checks st"
NerfedTalks.LANGUAGES.english["HELP_clear"] = L"Wipe out all NerfedButtons settings."
NerfedTalks.LANGUAGES.english["HELP_conditions"] = L"Lists all the conditions on you (player), your friendly target, and your enemy."
NerfedTalks.LANGUAGES.english["HELP_credits"] = L"List the authors and valuable contributors to the development of NerfedButtons."
NerfedTalks.LANGUAGES.english["HELP_ddcheck"] = L"/NB DDCHECK list\
  Lists all the disabled default checks you have set.\
/NB DDCHECK <AbilityLink> [<CheckName>]\
  Toggles on or off the default check CheckName for the ability linked.\
  <AbilityLink> = The ability you want to disable a default check for, linked from the ability window.\
  <CheckName> = (Optional) The name of the default check you want to toggle. Possible values are :\
enabled, target and cooldown. If not specified then all disabled checks for the linked ability will be re-enabled."
NerfedTalks.LANGUAGES.english["HELP_del"] = L"/NB DEL <slot number>\
  deletes the ability sequence binding to quickbar slot <slot number>.\
example: /nb del 3"
NerfedTalks.LANGUAGES.english["HELP_dt"] = L"/NB DT list\
  Lists all the default targets you have set by command line and set in the career files.\
/NB DT clear\
  Clears all the default targets you have set by command line.\
/NB DT <AbilityLink> [<target>]\
  Adds or removes a default target for an ability\
  <AbilityLink> = Ability from the Ability Window inserted with Shift-click\
  <target> = (Optional) The default target to affect to that ability. If no value is entered then the default target set by command line for that ability will be removed (will not affect default target entered in the career files)."
NerfedTalks.LANGUAGES.english["HELP_edit"] = L"/NB EDIT <slot_number>\
  Puts the command line you used for the <slot_number> back in the chat text box, to allow for easy editing.\
  <slot_number> = 1..48"
NerfedTalks.LANGUAGES.english["HELP_effects"] = L"Lists all the effects on you (player), your friendly target, and your enemy. Very useful for obtaining IDs for ability effects."
NerfedTalks.LANGUAGES.english["HELP_id"] = L"/NB ID <AbilityLink>\
  display the AbilityID for a Ability in the chat window."
NerfedTalks.LANGUAGES.english["HELP_list"] = L"/NB LIST \
  lists all bound quickbar slot numbers.\
/NB LIST all\
  lists all bound quickbar slot numbers and sequences\
/NB LIST <slot_number>\
  lists the ability sequence bound to slot <slot_number>\
  <slot_number> = 1..48"
NerfedTalks.LANGUAGES.english["HELP_macro"] = L"/NB MACRO list\
  Lists all the macros you have set to show at the end of sequences.\
/NB MACRO <ActionBarSlot> [<MacroNumber>]\
  Adds or removes a macro from an action bar slot\
  <ActionBarSlot> = The number of the slot where the macro will appear.\
  <MacroNumber> = (Optional) The number of the macro (between 1 and 42) that will be displayed.\
If none is specified it will clear any previously set macr for this slot."
NerfedTalks.LANGUAGES.english["HELP_params"] = L"/NB PARAMS\
  displays the list of parameters and their possible values."
NerfedTalks.LANGUAGES.english["HELP_pcreate"] = L"/NB PCREATE <description>\
\
Create a new NB profile."
NerfedTalks.LANGUAGES.english["HELP_pcur"] = L"/NB PCUR\
\
Returns the description of the current NB profile."
NerfedTalks.LANGUAGES.english["HELP_pdel"] = L"/NB PDEL <profile id>\
\
Delete a profile by its ID."
NerfedTalks.LANGUAGES.english["HELP_pdesc"] = L"/NB PDESC <description>\
\
Change the description of the current NB profile."
NerfedTalks.LANGUAGES.english["HELP_pforcedel"] = L"/NB FORCEDEL <profile id>\
\
Forced deletion of a profile by its ID."
NerfedTalks.LANGUAGES.english["HELP_plist"] = L"/NB PLIST\
\
List all available NB profiles."
NerfedTalks.LANGUAGES.english["HELP_pswitch"] = L"/NB PSWITCH <profile id>\
\
Switch to a different NB profile."
NerfedTalks.LANGUAGES.english["HELP_toggleautodismount"] = L"/NB TOGGLEAUTODISMOUNT\
\
Enabled or disabled NB sequences to trigger the autodismount addon."
NerfedTalks.LANGUAGES.english["HELP_toggleblank"] = L"/NB TOGGLEBLANK\
  Toggles whether the last ability of a sequence (default) or a blank slot is displayed when no ability is ready."
NerfedTalks.LANGUAGES.english["HELP_toggledisabled"] = L"/NB TOGGLEDISABLED\
\
Toggle whether the final ability in a sequence should be disabled if it fails its checks."
NerfedTalks.LANGUAGES.english["HELP_togglefullsoc"] = L"/NB TOGGLEFULLSOC\
  Toggles whether StayOnCast will last for half a second (default) or for the full duration of the channeling."
NerfedTalks.LANGUAGES.english["HELP_togglepages"] = L"/NB TOGGLEPAGES\
  Toggles action bar pages support on or off (default).\
 When pages support is turned on, each page of the hotbar may have different sequences assigned."
NerfedTalks.LANGUAGES.english["HELP_vcd"] = L"/NB VCD list\
  Lists all the career-wide VCDs you have set.\
/NB VCD clear\
  Clears all the career-wide VCDs you have set.\
/NB VCD <AbilityLink> [<cooldown>]\
  Adds or removes a career-wide cooldown for an ability\
  <AbilityLink> = Ability from the Ability Window inserted with Shift-click\
  <cooldown> = (Optional) The virtual cooldown to affect to that ability. If no value is entered then the careerwide cooldown for that ability will be removed."
NerfedTalks.LANGUAGES.english["Immovable"] = L"Immovable"
NerfedTalks.LANGUAGES.english["MACRO_LIST"] = L"nb> List of affected macros :\
"
NerfedTalks.LANGUAGES.english["MACRO_RESET"] = L"nb> Macro reset for slot "
NerfedTalks.LANGUAGES.english["MACRO_SET"] = L"nb> Macro set for slot "
NerfedTalks.LANGUAGES.english["MSG1"] = L"type /NB for help!"
NerfedTalks.LANGUAGES.english["NOSEQS_BOUND"] = L"nb> no sequences bound."
NerfedTalks.LANGUAGES.english["NO_SEQ_BND"] = L"nb> no sequence bound to slot."
NerfedTalks.LANGUAGES.english["OFF"] = L"off"
NerfedTalks.LANGUAGES.english["ON"] = L"on"
NerfedTalks.LANGUAGES.english["PARAMS_1"] = L"\
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
  <tier> = the units difficulty tier (0 = Normal, 1 = Champion, 2 = Hero, 3+ = Boss)"
NerfedTalks.LANGUAGES.english["PARAMS_2"] = L"  <career> = string (one of the following :)"
NerfedTalks.LANGUAGES.english["PARAMS_3"] = L"  <archetype> = string (one of the following :)"
NerfedTalks.LANGUAGES.english["PARAMS_4"] = L"  For more information on careers and archetypes see the NerfedAPI.lua file."
NerfedTalks.LANGUAGES.english["PROFILE_pcreate"] = L"Please enter a description for the profile. Ex : /nb pcreate career - spec"
NerfedTalks.LANGUAGES.english["PROFILE_pcreate2"] = L"NB created profile"
NerfedTalks.LANGUAGES.english["PROFILE_pcur"] = L"Current NB profile :"
NerfedTalks.LANGUAGES.english["PROFILE_pdel"] = L"NB profile doesn't exist."
NerfedTalks.LANGUAGES.english["PROFILE_pdel2"] = L"NB profile in use by"
NerfedTalks.LANGUAGES.english["PROFILE_pdel3"] = L"NB profile"
NerfedTalks.LANGUAGES.english["PROFILE_pdel4"] = L"deleted"
NerfedTalks.LANGUAGES.english["PROFILE_pdesc"] = L"Please enter a description for the profile. Ex : /nb pdesc career - respec"
NerfedTalks.LANGUAGES.english["PROFILE_pforcedel"] = L"NB profile for current character can't be deleted, use /nb clear to empty the profile."
NerfedTalks.LANGUAGES.english["PROFILE_pforcedel2"] = L"NB profile doesn't exist."
NerfedTalks.LANGUAGES.english["PROFILE_plist"] = L"Listing NB profiles :"
NerfedTalks.LANGUAGES.english["PROFILE_pswitch"] = L"NB profile doesn't exist."
NerfedTalks.LANGUAGES.english["PROFILE_pswitch2"] = L"NB profile switched to"
NerfedTalks.LANGUAGES.english["SEQS_BOUND"] = L"nb> sequences bound to slot(s): "
NerfedTalks.LANGUAGES.english["SEQS_FOUNDL"] = L" Sequence(s) found."
NerfedTalks.LANGUAGES.english["SEQ_ERR"] = L"nb> no ability ready in Sequence #"
NerfedTalks.LANGUAGES.english["UNBIND_SUCC"] = L"nb> unbind successfull."
NerfedTalks.LANGUAGES.english["Unstoppable"] = L"Unstoppable"
NerfedTalks.LANGUAGES.english["VCD_CLEAR"] = L"nb> All career-wide VCDs cleared."
NerfedTalks.LANGUAGES.english["VCD_LIST"] = L"nb> List of career-wide VCDs :"
NerfedTalks.LANGUAGES.english["VCD_RESET"] = L"nb> Career-wide cooldown reset for ability "
NerfedTalks.LANGUAGES.english["VCD_SET"] = L"nb> Career-wide cooldown set for ability "
NerfedTalks.LANGUAGES.english["Welcome"] = L"NerfedButtons loaded. Type /NB for help!"
