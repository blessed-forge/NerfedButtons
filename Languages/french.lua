NerfedTalks.LANGUAGES.french = {}

NerfedTalks.LANGUAGES.french["ABILITY_ERR"] = L"nb> Erreur de comp�tence dans la s�quence."
NerfedTalks.LANGUAGES.french["BAD_CMDLN"] = L"nb> commande inconnue: "
NerfedTalks.LANGUAGES.french["BAD_INIT"] = L"L'initialisation a �chou�."
NerfedTalks.LANGUAGES.french["BAD_LENGTH"] = L"Attention : Vous avez saisi une commande d�passant le nombre de caract�res maximum autoris�s !"
NerfedTalks.LANGUAGES.french["BAD_LIBSLASH"] = L"Attention : NerfedButtons requiert LibSlash v1.8++ !"
NerfedTalks.LANGUAGES.french["BAD_SLOT"] = L"Emplacement de barre de sort invalide. Sont valides les nombres de 1 � 60."
NerfedTalks.LANGUAGES.french["BINDING"] = L"Liaison NerfedButton en cours..."
NerfedTalks.LANGUAGES.french["BIND_FAILED"] = L"nb> ...echec de liaison."
NerfedTalks.LANGUAGES.french["CHB_ERR"] = L"nb> Echec de ChangeHotbar() failed. Emplacement de barre de sort invalide."
NerfedTalks.LANGUAGES.french["CLEARED"] = L"nb> tous les r�glages sont vierges" -- Needs review
NerfedTalks.LANGUAGES.french["CREDITS"] = L"NerfedButtons Credits\
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
NerfedTalks.LANGUAGES.french["DDC_LIST"] = L"nb> Liste des tests par d�faut d�sactiv�s :\
"
NerfedTalks.LANGUAGES.french["DDC_RESET"] = L"nb> Tout les tests par d�faut ont �t� r�activ�s pour cette comp�tence"
NerfedTalks.LANGUAGES.french["DDC_SET"] = L"nb> Test par d�faut d�sactiv� pour cette comp�tence"
NerfedTalks.LANGUAGES.french["DDC_UNSET"] = L"nb> Test par d�faut r�activ� pour cette comp�tence"
NerfedTalks.LANGUAGES.french["DT_CLEAR"] = L"nb> Toutes les cibles par d�faut positionn�s par ligne de commande ont �t� r�initialis�es"
NerfedTalks.LANGUAGES.french["DT_LIST_1"] = L"nb> Liste des cibles par d�faut :\
Cible par d�faut positionn�s dans le fichier de carri�re :"
NerfedTalks.LANGUAGES.french["DT_LIST_2"] = L"Cibles par d�faut positionn� par ligne de commande :"
NerfedTalks.LANGUAGES.french["DT_RESET"] = L"nb> Cible par d�faut r�initialis�e pour la comp�tence"
NerfedTalks.LANGUAGES.french["DT_SET"] = L"nb> Cible par d�faut positionn�e pour la comp�tence"
NerfedTalks.LANGUAGES.french["HELP_"] = L"Usage de NerfedButtons :\
/nb add|del|list|edit|checks|params|help|id|vcd|dt|macro|ddcheck|toggleblank|togglepages|togglefullsoc <options> \
Entrez /nb help <command> pour plus d'information.\
Entrez /nb ui pour afficher l'interface.\
\
Tutoriaux et forums de discussions disponibles en anglais �:\
  http://www.nerfedwar.net/nerfedbuttons" -- Needs review
NerfedTalks.LANGUAGES.french["HELP_CHECKS.a.description"] = L"Checks whether a target is of a specific archetype. " -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.a.example"] = L"/nba dd 1 [Ability1]a:wu:+:e[Ability2]\
\
Only use [Ability1] if your enemy is a weapon user." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.a.fullname"] = L"Archetype" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.acd.description"] = L"Checks whether one of your ability is on cooldown. Use only for abilities other than the one this is linked to, as it will be checked by default. " -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.acd.example"] = L"/nb add 1 [Ability1]acd:9999:+[Ability2]\
\
Only use Ability1 if another ability with an id of 9999 is on cooldown." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.acd.fullname"] = L"AbilityOnCooldown" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ae.description"] = L"Checks whether one of your ability is enabled. This means if it is grayed in the action bar or not, not related to cooldown or range. Use only for abilities other than the one this is linked to, as it will be checked by default." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ae.example"] = L"/nb add 1 [Sundering Chop]ae:9161:+[Hack]\
\
Only use [Sundering Chop] if another ability (9161 = Blindside) is enabled.\
\
This is useful as Blindside can only be used from behind, but Sundering Chop can be used from any position but only gets its bonus when used from behind. The AbilityTargetValid (atv) check is more suited in this case as ae also takes into account any other requirements of the ability such as action points..." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ae.fullname"] = L"AbilityEnabled" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ap.description"] = L"Checks whether you have a certain amount of ap. " -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ap.example"] = L"/nb add 1 [Ability1]ap:25:-[Ability2]\
\
Only use [Ability1] if you have less than 25 action points remaining.\
\
/nb add 1 [Ability1]ap:75:+[Ability2]\
\
Only use [Ability1] if you have more than 75 action points remaining." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ap.fullname"] = L"ActionPoints" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.atv.description"] = L"Checks whether one of your ability has a valid target. Use only for abilities other than the one this is linked to, as it will be checked by default. \
\
Ideal way to add a mandatory positional requirement to a skill that doesn't have one." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.atv.example"] = L"/nb add 1 [Sundering Chop]atv:9161:+[Hack]\
\
Only use [Sundering Chop] if another ability (9161 = Blindside) considers the target valid.\
\
This is useful as Blindside can only be used from behind, but Sundering Chop can be used from any position. Sundering Chop however only really shines when used from behind due to a bonus 50% armor penetration. The AbilityTargetValid check lets us link the positional requiremetns of Blindside to Sundering Chop :)" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.atv.fullname"] = L"AbilityTargetValid" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.c.description"] = L"Checks whether a target is of a specific career.  Valid careers are:\
\
en,sw ,sh,ib ,bg,sm,bo,kbs,chs , wh,we,wl,ma,sl,chp,am,sha,rp,zlt ,bw,sor,mag,wp,dok\
\
" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.c.example"] = L"/nb add 1 [Ability1]c:bw:+:e[Ability2]\
\
Only use [Ability1] on Bright Wizard enemies." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.c.fullname"] = L"Career" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.cd.description"] = L"Adds a virtual cooldown to that specific ability (in this place of that sequence).\
The cooldown is target specific, but only the default target is used to determine which target to affect the cooldown to, you can set the default target either with the /nb dt command or by changing it in the class file (see the archmage file for an example)." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.cd.example"] = L"/nb add 1 [Nature's Bond]cd:13[Ability 2][Ability 3]...\
\
Apply the Natures bond HoT to your pet once every 13 seconds." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.cd.fullname"] = L"VirtualCooldown" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.cm.description"] = L"Checks whether you have a certain amount of career mechanic points or not." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.cm.example"] = L"/nb add 1 [Meltdown]cm:90:+\
\
Use Meltdown if you get 90 or more points in the Bright Wizard combustion career mechanic." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.cm.fullname"] = L"CareerMechanic" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.com.description"] = L"Checks whether you are in combat. \
+ if you want the ability to show up when you are in combat, - when you aren't. " -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.com.example"] = L"/nb add 1 [Ability1]com:+ [Ability2]\
\
Use [Ability1] if you are in combat, otherwise [Ability2]." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.com.fullname"] = L"Combat" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.con.description"] = L"Checks whether a target has a specific condition. Additionally you can check for the Unstoppable and Immovable buffs with this check.  Do a /nb params to see a list of supported conditions." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.con.example"] = L"/nb add 1 [Cauterize]con:hex:+:p\
\
Use cauterize if the player is hexed." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.con.fullname"] = L"Condition" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.e.description"] = L"Checks whether a target have the effect given by one of your abilities. " -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.e.example"] = L"/nb add 1 [Vigilance][Shining Blade];e:8034:1:s:-:p \
\
Use Shining Blade if Vigilance buff effect is not active." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.e.fullname"] = L"Effets" -- Needs review
NerfedTalks.LANGUAGES.french["HELP_CHECKS.et.description"] = L"Checks whether you have an enemy target. \
+ if you want the ability to show up when you have an enemy target, - when you don't. " -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.et.example"] = L"/nb add 1 [Ability1]et:+[Ability2]et:-[Ability3]\
\
Use [Ability1] if you have an enemy target and the ability passes its basic checks, use Ability2 if you don't have an enemy target and it passes its basic checks, otherwise use [Ability3]." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.et.fullname"] = L"EnemyTarget" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ft.description"] = L"Checks whether you have a friendly target. Use the 's' flag to accept yourself as a valid friendly target if you are selected." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ft.example"] = L"/nb add 1 [Ability1]ft:+[Ability2]ft:-[Ability3]\
\
Use [Ability1] if you have a friendly target and the ability passes its basic checks, use Ability2 if you don't have a friendly  target and it passes its basic checks, otherwise use [Ability3]." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ft.fullname"] = L"FriendlyTarget" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.hp.description"] = L"Checks whether you have a certain amount of hp. " -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.hp.example"] = L"/nb add 1 [Ability1]hp:500:+[Ability2]\
\
Only use [Ability1] if you have over 500 hit points." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.hp.fullname"] = L"HitPoints" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.hpp.description"] = L"Checks whether a target has a certain % of hp." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.hpp.example"] = L"/nb add [Ability1]hpp:25:-:e[Ability2]\
\
Only use [Abilty1] if your enemy has under 25% of their hitpoints left." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.hpp.fullname"] = L"HitPointsPercent" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.iap.description"] = L"Checks whether you are a party or not." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.iap.example"] = L"/nb add 1 [Blessing Of Isha]iap:+\
\
Only use Blessing Of Isha if you are in a party." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.iap.fullname"] = L"InAParty" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ie.description"] = L"Checks whether one of your items is enabled. This means if it is grayed in the action bar or not, not related to cooldown or range. Use only for items other than the one this is linked to, as it will be checked by default." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ie.example"] = L"/nb add 1 [Ability1]ie:13402[Ability2]\
\
Only use Ability 1 if item with id 13402 is enabled.\
\
You can use /nb id [ItemLink] to obtain the id on an item." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.ie.fullname"] = L"ItemEnabled" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.imp.description"] = L"Checks whether your friendly target is in a party or not." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.imp.example"] = L"/nb add 1 [Mark of Daemonic Fury]imp:+\
\
Only use Mark of Daemonic Fury if your friendly target is in your party." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.imp.fullname"] = L"InMyParty" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.mov.description"] = L"Checks whether you are moving. " -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.mov.example"] = L"/nb add 1 [Lambent Aura]mov:+[Healing Energy]\
\
Use [Lambent Aura] is you are moving, otherwise use [Healing Energy]" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.mov.fullname"] = L"Movement" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.nam.description"] = L"Only use an action (item/ability etc...) if the test string provided can be found as part of its name." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.nam.example"] = L"/nb add 1 [Ability1]name:Mage:+:e[Ability2]\
\
Only use Ability1 if the name of the enemy contains the text \"Mage\".\
\
The text check is case sensitive." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.nam.fullname"] = L"Name" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.p.description"] = L"Checks whether you have a pet or not." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.p.example"] = L"/nb add 1 [Call War Lion]p:-\
\
Call a war lion pet if you don't have one" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.p.fullname"] = L"Animal" -- Needs review
NerfedTalks.LANGUAGES.french["HELP_CHECKS.rvr.description"] = L"Checks whether you are flagged for RVR or not." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.rvr.example"] = L"/nb add 1 [Healing Potion]rvr:+\
\
Only use Healing Potion if you are flagged for RVR." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.rvr.fullname"] = L"RVR" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.sc.description"] = L"Checks whether you are a member of a scenario or not." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.sc.example"] = L"/nb add 1 [Meltdown]sc:+\
\
Only use Meltdown if you are a member of a scenario." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.sc.fullname"] = L"Scenario" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.si.description"] = L"Checks whether you are enaged in a siege or not." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.si.example"] = L"Utilise une Potion de Vie uniquement si vous �tes en si�ge."
NerfedTalks.LANGUAGES.french["HELP_CHECKS.si.fullname"] = L"Si�ge"
NerfedTalks.LANGUAGES.french["HELP_CHECKS.st.description"] = L"Used to check if a target has the effect of the ability it is linked to. " -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.st.example"] = L"/nb add 1 [Fervor]st:3:s:e:2[Ability 2][Ability 3]...\
\
Keep 3 stacks of Fervor on your target and refreshes them 2 seconds before they expire." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS.st.fullname"] = L"Empiler" -- Needs review
NerfedTalks.LANGUAGES.french["HELP_CHECKS.wb.description"] = L"V�rifie si vous �tes membre d'une bande."
NerfedTalks.LANGUAGES.french["HELP_CHECKS.wb.example"] = L"Utilise uniquement la comp�tence Meltdown si vous �tes membre d'une bande."
NerfedTalks.LANGUAGES.french["HELP_CHECKS.wb.fullname"] = L"WarBand" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_CHECKS_No_Description"] = L"Aucune information disponible." -- Needs review
NerfedTalks.LANGUAGES.french["HELP_CHECKS_No_Example"] = L"Aucun exemple disponible" -- Needs review
NerfedTalks.LANGUAGES.french["HELP_PARAMS.abilityId"] = L"number (The ID number of an ability, NOT a shift-click link)." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_PARAMS.ap"] = L"number (the required number of ap)" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_PARAMS.archetype"] = L"One of the basic WAR archetypes or custom NerfedButtons defined archetypes:\
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
NerfedTalks.LANGUAGES.french["HELP_PARAMS.career"] = L"One of the WAR career types:\
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
NerfedTalks.LANGUAGES.french["HELP_PARAMS.condition"] = L"string (one of the following :)" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_PARAMS.duration"] = L"number (duration at the end of the effect when the mod will ignore that the effect is applied, mostly useful to refresh debuffs before they run out.)" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_PARAMS.effect"] = L"nombre (l'identifiant pour une action)"
NerfedTalks.LANGUAGES.french["HELP_PARAMS.hp"] = L"nombre (le nombre de PV requit)"
NerfedTalks.LANGUAGES.french["HELP_PARAMS.hpPercent"] = L"nombre (le pourcentage de PV requit)"
NerfedTalks.LANGUAGES.french["HELP_PARAMS.itemId"] = L"The unique identifier for an item. Use /nb id [ItemLink] to retrieve the id for an item." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_PARAMS.mechanic"] = L"nombre (le nombre de points de maitrise requit)"
NerfedTalks.LANGUAGES.french["HELP_PARAMS.need"] = L"+ or - (whether the check needs to be true (+) or false (-), skipping this means +)" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_PARAMS.onlySelf"] = L"s or nothing (whether only player inflicted stacks are checked)" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_PARAMS.stackCount"] = L"number (The ID number of an ability, NOT a link)." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_PARAMS.target"] = L"p (player), f (friendly target) or e (enemy target)." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_PARAMS.virtualCooldown"] = L"number (the virtual cooldown to use for that ability)" -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_actions"] = L"Lists all the actions (abilities and items) with their corresponding action ids." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_add"] = L"/NB ADD <slotnumber>[<AbilityLink>[;<check>]*]+\
  Le ; avant le premier test pour une comp�tence est optionnel.\
\
  Si vous n'�tes pas famili� avec lex expressions r�guli�res, la ligne ci dessus signifie qu'apr�s <slotNumber> vous pouvez mettre une ou plusieurs <AbilityLink>, vous pouvez ensuite mettre autant de <check> que souhait�s (m�me aucun) s�par�s par des ;\
L'ordre des Tests n'est pas important.\
\
  <slotnumber> = 1..48\
  <AbilityLink> = Comp�tence issue de la fen�tre de comp�tence et obtenue par Shift-click\
  <check> = <shortName>[:<parameter>]+\
\
La ligne ci dessus signifie que <check> doit �tre le <shortName> d'un test, suivi par un ou plusieurs param�tres, s�par�s par des :\
\
??The sentence is not really clear for me,??\
\"  The order of the parameters is very important, you always must input them in order, and even though you can forget the ones you don't want at the end of the parameters, you cannot skip one in the middle, to leave one blank in the middle you have to put the : for that parameter, and put the : for the following one right after it.\"\
\
??Here's a possible traduction:??\
-->\"  L'ordre des param�tres est tr�s important, il est imp�ratif de les �crire dans l'ordre. Il est possible de ne pas remplir les derniers paral�mtres, mais il ne faut pas en oublier en plein milieu. Pour laisser un blanc au milieu il faut �crire : pour ce param�tre et : pour le suivant.\"\
\
Dans l'exemple suivant le \"st\" est le nom court pour le lot, le premier param�tre est le nombre de lot, le second (qui n'est pas pr�sent dans le second exemple) est le flag \"onlySelf\", le troisi�me param�tre est pour la cible.\
<check> exemple 1: Pour positionner un unique param�tre au d�but : st:1\
<check> exemple 2: Pour passer un param�tre au milieur : st:1::f\
\
Pour obtenir une liste des tests possible, leur nom court et leur param�tres, utilisez la commande : /nb checks.\
Pour obtenir une liste des valeurs possibles pour chaque param�tres, utilisez la commande : /nb params.\
\
  D'autres exemples :\
exemple 1: /nb add 3[Brutal Assault]st:1:s[Grim Slash]\
exemple 2: /nb add 1[Consume Strength]st:1:s:f[Cleave Soul]\
exemple 3: /nb add 1[Absolution]cm:5[Fervor]st:3:s[Razor Strike]\
exemple 1: /nb add 2[Fervor]st:3:s[Fervor]cd:6[Razor Strike]\
exemple 2: /nb add 1[Acid Bomb]st:1:s;cd:2.245[Flashband Grenade]st:1:s" -- Needs review
NerfedTalks.LANGUAGES.french["HELP_checks"] = L"/NB CHECKS\
  Liste tout les tests disponible, leur nom court et leurs param�tres.\
\
/NB CHECKS <check name>\
  fournit des informations d�taill�s quand a un tests sp�cifique\
  exemple: /nb checks st"
NerfedTalks.LANGUAGES.french["HELP_clear"] = L"Wipe out all NerfedButtons settings." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_conditions"] = L"Lists all the conditions on you (player), your friendly target, and your enemy." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_credits"] = L"List the authors and valuable contributors to the development of NerfedButtons." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_ddcheck"] = L"/NB DDCHECK list\
  Liste tout les tests d�sactiv�s par d�faut qui ont �t� positionn�s.\
/NB MACRO <AbilityLink> [<CheckName>]\
  Active ou d�sactive le test par d�faut <CheckName> pour la comp�tence <AbilityLink>.\
  <AbilityLink> = La comp�tence pour laquelle on souhaite d�sactiver un test par d�faut, issue de la fen�tre des comp�tences.\
  <CheckName> = (Optionel) Le nom du tests par d�faut qu'on souhaite activer/d�sactiver. Les valeurs possibles sont :\
enabled, target et cooldown. Si non sp�cific�, tout les tests d�sactiv�s pour la comp�tences seront r�activ�s." -- Needs review
NerfedTalks.LANGUAGES.french["HELP_del"] = L"/NB DEL <slot number>\
  Supprime la s�quence de comp�tence li�e a l'emplacement de barre  <slot number>.\
exemple: /nb del 3"
NerfedTalks.LANGUAGES.french["HELP_dt"] = L"/NB DT list\
 Listes de toutes les cibles par d�faut que vous avez d�fini par ligne de commande et dans les fichiers de carri�re.\
/NB DT clear\
  Efface toutes les cibles par d�faut que vous avez d�fini la ligne de commande.\
/NB DT <AbilityLink> [<target>]\
  Ajoute ou supprime une cible par d�faut pour une capacit�\
  <AbilityLink> = Capacit� � partir de la fen�tre Capacit� ins�r� avec Maj-clic.\
  <target> = (Optional) La cible par d�faut est affectee � cette capacit�. Si aucune valeur n'est entr�e par cible par d�faut d�finie par ligne de commande ,la  capacit� sera enlev�e (n'affectera pas la cible par d�faut qui est entr� dans les dossiers de carri�re)." -- Needs review
NerfedTalks.LANGUAGES.french["HELP_edit"] = L"/NB EDIT <slot_number>\
  Met la ligne de commande que vous avez utilis�e pour  <slot_number> dans la zone de texte dans le chat, pour permettre un montage facile.\
  <slot_number> = 1..48" -- Needs review
NerfedTalks.LANGUAGES.french["HELP_effects"] = L"Lists all the effects on you (player), your friendly target, and your enemy. Very useful for obtaining IDs for ability effects." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_id"] = L"/NB ID <AbilityLink>\
  /NB ID <AbilityLink>\
  afficher le AbilityID pour une capacit� dans la fen�tre de chat." -- Needs review
NerfedTalks.LANGUAGES.french["HELP_list"] = L"/NB LIST\
  listes de tous les emplacement utilis�s par NB dans la Barre de raccourci.\
/NB LIST all\
  listes de tous les emplacement utilis�s par NB dans la Barre de raccourci et leur sequences.\
/NB LIST <slot_number>\
  listes la sequence de competence li�e au <slot_number>\
  <slot_number> = 1..48" -- Needs review
NerfedTalks.LANGUAGES.french["HELP_macro"] = L"/NB MACRO list\
  �num�re toutes les macros que vous avez configur� pour les afficher � la fin des s�quences.\
/NB MACRO <ActionBarSlot> [<MacroNumber>]\
  Ajoute ou supprime une macro � partir d'un emplacement de la barre d'action.\
  <ActionBarSlot> = Le num�ro de l'emplacement o� la macro appara�t.\
  <MacroNumber> = (Facultatif) Le nombre de la macro (entre 1 et 42) sera affich�e.\
Si aucune n'est sp�cifi�e, il permet de netoyer toutes les macro pr�c�dament li�e pour l'emplacement." -- Needs review
NerfedTalks.LANGUAGES.french["HELP_params"] = L"/NB PARAMS\
  affiche  la liste des param�tres et leurs possible valeurs."
NerfedTalks.LANGUAGES.french["HELP_pcreate"] = L"/NB PCREATE <description>\
\
Create a new NB profile." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_pcur"] = L"/NB PCUR\
\
Returns the description of the current NB profile." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_pdel"] = L"/NB PDEL <profile id>\
\
Delete a profile by its ID." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_pdesc"] = L"/NB PDESC <description>\
\
Change the description of the current NB profile." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_pforcedel"] = L"/NB FORCEDEL <profile id>\
\
Forced deletion of a profile by its ID." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_plist"] = L"/NB PLIST\
\
List all available NB profiles." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_pswitch"] = L"/NB PSWITCH <profile id>\
\
Switch to a different NB profile." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_toggleautodismount"] = L"/NB TOGGLEAUTODISMOUNT\
\
Enabled or disabled NB sequences to trigger the autodismount addon." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_toggleblank"] = L"/NB TOGGLEBLANK\
  Active si la derni�re comp�tence d'une s�quence est affich�e (par d�faut) ou un emplacement vide dans le cas o� aucune comp�tence n'est pr�te." -- Needs review
NerfedTalks.LANGUAGES.french["HELP_toggledisabled"] = L"/NB TOGGLEDISABLED\
\
Toggle whether the final ability in a sequence should be disabled if it fails its checks." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_togglefullsoc"] = L"/NB TOGGLEFULLSOC\
  Toggles whether StayOnCast will last for half a second (default) or for the full duration of the channeling." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_togglepages"] = L"/NB TOGGLEPAGES\
  Toggles action bar pages support on or off (default).\
 When pages support is turned on, each page of the hotbar may have different sequences assigned." -- Requires localization
NerfedTalks.LANGUAGES.french["HELP_vcd"] = L"/NB VCD list\
  Lists all the career-wide VCDs you have set.\
/NB VCD clear\
  Clears all the career-wide VCDs you have set.\
/NB VCD <AbilityLink> [<cooldown>]\
  Adds or removes a career-wide cooldown for an ability\
  <AbilityLink> = Ability from the Ability Window inserted with Shift-click\
  <cooldown> = (Optional) The virtual cooldown to affect to that ability. If no value is entered then the careerwide cooldown for that ability will be removed." -- Requires localization
NerfedTalks.LANGUAGES.french["Immovable"] = L"Immovable" -- Requires localization
NerfedTalks.LANGUAGES.french["MACRO_LIST"] = L"nb> List of affected macros :\
" -- Requires localization
NerfedTalks.LANGUAGES.french["MACRO_RESET"] = L"nb> Macro reset for slot " -- Requires localization
NerfedTalks.LANGUAGES.french["MACRO_SET"] = L"nb> Macro set for slot " -- Requires localization
NerfedTalks.LANGUAGES.french["MSG1"] = L"Tapez /NB pour afficher l'aide" -- Needs review
NerfedTalks.LANGUAGES.french["NOSEQS_BOUND"] = L"nb> no sequences bound." -- Requires localization
NerfedTalks.LANGUAGES.french["NO_SEQ_BND"] = L"nb> no sequence bound to slot." -- Requires localization
NerfedTalks.LANGUAGES.french["OFF"] = L"off" -- Needs review
NerfedTalks.LANGUAGES.french["ON"] = L"on" -- Needs review
NerfedTalks.LANGUAGES.french["PARAMS_1"] = L"\
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
NerfedTalks.LANGUAGES.french["PARAMS_2"] = L"  <career> = string (one of the following :)" -- Requires localization
NerfedTalks.LANGUAGES.french["PARAMS_3"] = L"  <archetype> = string (one of the following :)" -- Requires localization
NerfedTalks.LANGUAGES.french["PARAMS_4"] = L"  For more information on careers and archetypes see the NerfedAPI.lua file." -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pcreate"] = L"Please enter a description for the profile. Ex : /nb pcreate career - spec" -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pcreate2"] = L"NB created profile" -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pcur"] = L"Current NB profile :" -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pdel"] = L"NB profile doesn't exist." -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pdel2"] = L"NB profile in use by" -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pdel3"] = L"NB profile" -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pdel4"] = L"deleted" -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pdesc"] = L"Please enter a description for the profile. Ex : /nb pdesc career - respec" -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pforcedel"] = L"NB profile for current character can't be deleted, use /nb clear to empty the profile." -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pforcedel2"] = L"NB profile doesn't exist." -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_plist"] = L"Listing NB profiles :" -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pswitch"] = L"NB profile doesn't exist." -- Requires localization
NerfedTalks.LANGUAGES.french["PROFILE_pswitch2"] = L"NB profile switched to" -- Requires localization
NerfedTalks.LANGUAGES.french["SEQS_BOUND"] = L"nb> sequences bound to slot(s): " -- Requires localization
NerfedTalks.LANGUAGES.french["SEQS_FOUNDL"] = L" Sequence(s) found." -- Requires localization
NerfedTalks.LANGUAGES.french["SEQ_ERR"] = L"nb> no ability ready in Sequence #" -- Requires localization
NerfedTalks.LANGUAGES.french["UNBIND_SUCC"] = L"nb> unbind successfull." -- Requires localization
NerfedTalks.LANGUAGES.french["Unstoppable"] = L"Unstoppable" -- Requires localization
NerfedTalks.LANGUAGES.french["VCD_CLEAR"] = L"nb> All career-wide VCDs cleared." -- Requires localization
NerfedTalks.LANGUAGES.french["VCD_LIST"] = L"nb> List of career-wide VCDs :" -- Requires localization
NerfedTalks.LANGUAGES.french["VCD_RESET"] = L"nb> Career-wide cooldown reset for ability " -- Requires localization
NerfedTalks.LANGUAGES.french["VCD_SET"] = L"nb> Career-wide cooldown set for ability " -- Requires localization
NerfedTalks.LANGUAGES.french["Welcome"] = L"NerfedButtons charg�. Entrez /NB pour obtenir l'aide!"

