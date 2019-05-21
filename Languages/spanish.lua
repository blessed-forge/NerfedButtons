NerfedTalks.LANGUAGES.spanish = {}

NerfedTalks.LANGUAGES.spanish["ABILITY_ERR"] = L"nb> errod de abilidad en la secuencia."
NerfedTalks.LANGUAGES.spanish["BAD_CMDLN"] = L"nb> comando desconocido: "
NerfedTalks.LANGUAGES.spanish["BAD_INIT"] = L"inicializacion fallida"
NerfedTalks.LANGUAGES.spanish["BAD_LENGTH"] = L"Cuidado: has introducido un comando con mas caracteres de los permitidos"
NerfedTalks.LANGUAGES.spanish["BAD_LIBSLASH"] = L"Cuidado: NerfedButtons necesita LibSlash V1.8++"
NerfedTalks.LANGUAGES.spanish["BAD_SLOT"] = L"\194\160\194\160\194\160 Boton de barra no valido. Rango valido 1-60."
NerfedTalks.LANGUAGES.spanish["BINDING"] = L"NerfedButton bindeando..."
NerfedTalks.LANGUAGES.spanish["BIND_FAILED"] = L"nb> ...bindeo fallido."
NerfedTalks.LANGUAGES.spanish["CHB_ERR"] = L"nb> ChangeHotbar() fallado. Boton de barra no valido"
NerfedTalks.LANGUAGES.spanish["CLEARED"] = L"nb>configuraci\195\179nes de personaje borradas"
NerfedTalks.LANGUAGES.spanish["CREDITS"] = L"Creditos de NerfedButtons\
\
No puedo nombrar a todos... pero esta lista engloba a todos los pricipales que han hecho posible NerferdButons. Mis discuplas a todos los que no he nombrado:\
\
NerfedWar - autor (\194\161hey, ese soy yo!).\
Scaythe, Huggu - autores retirados que llevaron el addon a un nevo nivel. \194\161 Muchas gracias !.\
Deuce, Tony - pruebas, control de errores y otro tipo de ayuda.\
NeuroGrey, Poor-Man - traductores.\
walla, hanshotfirst y todos los que contribuyen en el foro de forma regular.\
\
\194\161\194\161\194\161 A pasarlo bien !!!\
\
NerfedWar" -- Needs review
NerfedTalks.LANGUAGES.spanish["DDC_LIST"] = L"nb> lista de comprobaciones por defecto desactivada" -- Needs review
NerfedTalks.LANGUAGES.spanish["DDC_RESET"] = L"nb> All default checks re-enabled for ability " -- Requires localization
NerfedTalks.LANGUAGES.spanish["DDC_SET"] = L"nb> Default check disabled for ability " -- Requires localization
NerfedTalks.LANGUAGES.spanish["DDC_UNSET"] = L"nb> Default check re-enabled for ability " -- Requires localization
NerfedTalks.LANGUAGES.spanish["DT_CLEAR"] = L"nb> All Default targets set by command line cleared." -- Requires localization
NerfedTalks.LANGUAGES.spanish["DT_LIST_1"] = L"nb> List of Default targets :\
Default targets set in career files :" -- Requires localization
NerfedTalks.LANGUAGES.spanish["DT_LIST_2"] = L"Default targets set by command line :" -- Requires localization
NerfedTalks.LANGUAGES.spanish["DT_RESET"] = L"nb> Default target reset for ability " -- Requires localization
NerfedTalks.LANGUAGES.spanish["DT_SET"] = L"nb> Default target set for ability " -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_"] = L"Uso Basico de NerfedButtons:\
  /nb ui|add|del|list|edit|checks|params|effects|help|id|vcd|dt|macro|ddcheck|toggleblank|togglepages|togglefullsoc|credits <options>\
escribe /nb help <command> para mas ayuda.\
escribe /nb ui para ver las opciones.\
\
Tutoriales y foros de ayuda disponibles en:\
http://www.nerfedwar.net/nerfedbuttons" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.a.description"] = L"Comprueba si tu objetivo es de un arquetipo especifico"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.a.example"] = L"/nba a\195\177ade 1 [habilidad1]a:wu:+:e[habilidad2]\
\
Solo usa [habilidad1] si tu enemigo usa armas" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.a.fullname"] = L"Arquetipo"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.acd.description"] = L"Checks whether one of your ability is on cooldown. Use only for abilities other than the one this is linked to, as it will be checked by default. " -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.acd.example"] = L" /nb a\195\177ade 1 [habilidad1]acd:9999:+[habilidad2]\
\
Solo usa habilidad1 si la otra habiliadad con este ID tiene tiempo de recarga 9999"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.acd.fullname"] = L"Habilidad recargandose"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ae.description"] = L"Checks whether one of your ability is enabled. This means if it is grayed in the action bar or not, not related to cooldown or range. Use only for abilities other than the one this is linked to, as it will be checked by default." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ae.example"] = L"/nb add 1 [Sundering Chop]ae:9161:+[Hack]\
\
Only use [Sundering Chop] if another ability (9161 = Blindside) is enabled.\
\
This is useful as Blindside can only be used from behind, but Sundering Chop can be used from any position but only gets its bonus when used from behind. The AbilityTargetValid (atv) check is more suited in this case as ae also takes into account any other requirements of the ability such as action points..." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ae.fullname"] = L"Habilidad activada"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ap.description"] = L"Comprueba tu cantidad de puntos de acci\195\179n" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ap.example"] = L"/nb a\195\177ade 1 [habilidad1]ap:25:-[habilidad2]\
\
Usa solo [habilidad1] si te quedan menos de 25 puntos de accion.\
\
/nb a\195\177ade 1 [habilidad1]ap:75:+[habilidad2]\
\
Usa solo [habilidad1] si tienes mas de 75 puntos de accion."
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ap.fullname"] = L"Puntos de acci\195\179n"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.atv.description"] = L"Checks whether one of your ability has a valid target. Use only for abilities other than the one this is linked to, as it will be checked by default. \
\
Ideal way to add a mandatory positional requirement to a skill that doesn't have one." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.atv.example"] = L"/nb add 1 [Sundering Chop]atv:9161:+[Hack]\
\
Only use [Sundering Chop] if another ability (9161 = Blindside) considers the target valid.\
\
This is useful as Blindside can only be used from behind, but Sundering Chop can be used from any position. Sundering Chop however only really shines when used from behind due to a bonus 50% armor penetration. The AbilityTargetValid check lets us link the positional requiremetns of Blindside to Sundering Chop :)" -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.atv.fullname"] = L"Habilidad de objetivo valida"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.c.description"] = L"Comprueba si el objetivo es de una clase espec\195\173fica. Las clases validas son:\
\
en,sw ,sh,ib ,bg,sm,bo,kbs,chs , wh,we,wl,ma,sl,chp,am,sha,rp,zlt ,bw,sor,mag,wp,dok"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.c.example"] = L"/nb a\195\177ade 1 [habilidad1]c:bw:+:e[habilidad2]\
\
Usa solo [habilidad] en los hechiceros brillantes enemigos"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.c.fullname"] = L"Clase"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.cd.description"] = L"Adds a virtual cooldown to that specific ability (in this place of that sequence).\
The cooldown is target specific, but only the default target is used to determine which target to affect the cooldown to, you can set the default target either with the /nb dt command or by changing it in the class file (see the archmage file for an example)." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.cd.example"] = L"/nb a\195\177ade 1 [Nature's Bond]cd:13[Ability 2][Ability 3]...\
\
Aplica Natures bond a tu mascota cada 13 segundos"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.cd.fullname"] = L"Recarga virtual" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.cm.description"] = L"Comprueba si tienes cierta cantidad de puntos de tu mecanica de clase o no" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.cm.example"] = L" /nb a\195\177\195\177ade 1 [Meltdown]cm:90:+\
\
Usa Meltdown si tienes 90 o mas puntos en la mecanica de clase de hechicero brillante" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.cm.fullname"] = L"Mecanica de clase" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.com.description"] = L"Checks whether you are in combat. \
+ if you want the ability to show up when you are in combat, - when you aren't. " -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.com.example"] = L"/nb a\195\177ade 1 [habilidad1]com:+ [habilidad2]\
\
Usa [habilidad1] si estas en combate, si no, usa [habilidad2]"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.com.fullname"] = L"Combate"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.con.description"] = L"Comprueba si tu objetivo tienes una condici\195\179n espec\195\173fica. Adem\195\161s pordr\195\161s comprobar tambien si el objetivo es imparable o inamovible. Escribe /nb para ver la lista de condiciones soportadas" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.con.example"] = L"/nb a\195\177ade1 [Cauterizar]con:hex:+:p\
\
Usa cauterizar si el jugador esta embrujado"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.con.fullname"] = L"Condici\195\179n"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.e.description"] = L"Comprueba si tu objetivo sufre alg\195\186n efecto de tus habilidades"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.e.example"] = L"/nb add 1 [Vigilance][Shining Blade];e:8034:1:s:-:p\
\
Usa Shining Blade si el buff Vigilance no esta activo." -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.e.fullname"] = L"Efecto"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.et.description"] = L"Comprueba si tienes un objetivo enemigo\
+ si quieres que la habilidad se muestre cuando tienes un objetivo enemigo, - cuando no."
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.et.example"] = L"/nb add 1 [Ability1]et:+[Ability2]et:-[Ability3]\
\
Use [Ability1] if you have an enemy target and the ability passes its basic checks, use Ability2 if you don't have an enemy target and it passes its basic checks, otherwise use [Ability3]." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.et.fullname"] = L"Objetivo enemigo"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ft.description"] = L"Comprueba tu tu objetivo es amigo. Usa 's' para incluirte a ti mismo si estas seleccionado, como un objetivo amigo valido"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ft.example"] = L"/nb add 1 [Ability1]ft:+[Ability2]ft:-[Ability3]\
\
Use [Ability1] if you have a friendly target and the ability passes its basic checks, use Ability2 if you don't have a friendly  target and it passes its basic checks, otherwise use [Ability3]." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ft.fullname"] = L"Objetivo amigo"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.hp.description"] = L"Comprueba tu cantidad de vida"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.hp.example"] = L"/nb a\195\177ade 1 [habilidad1]hp:500:+[habilidad2]\
\
Solo usa [habilidad1] si tienes menos de 500 puntos de vida"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.hp.fullname"] = L"Vida"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.hpp.description"] = L"Comprueba el porcentaje de vida de tu objetivo" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.hpp.example"] = L"/nb a\195\177ade [habilidad1]hpp:25:-:e[habilidad2]\
\
Usa solo [habilidad1] si a tu enemigo le queda menos del 25% de la vida."
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.hpp.fullname"] = L"Porcentaje de vida" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.iap.description"] = L"Comprueba si esta\195\161 en un grupo o no"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.iap.example"] = L"/nb add 1 [Blessing Of Isha]iap:+\
\
Usa bendici\195\179n de Isha solo si formas parte de un grupo" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.iap.fullname"] = L"en grupo"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ie.description"] = L"Checks whether one of your items is enabled. This means if it is grayed in the action bar or not, not related to cooldown or range. Use only for items other than the one this is linked to, as it will be checked by default." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ie.example"] = L"/nb a\195\177ade 1 [habilidad1]ie:13402[habilidad2]\
\
Solo usa habilidad1 si el objeto con la ID 13402 esta activado\
\
Puedes usar /nb id [ItemLink] para saber la ID de un objeto."
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.ie.fullname"] = L"Objeto activado"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.imp.description"] = L"Comprueba si tu amigo seleccionado forma parte de un grupo o no"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.imp.example"] = L"Usar solamente \"Marca de furia demon\195\173aca\" si tu objetivo amigo est\195\161 en tu grupo"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.imp.fullname"] = L"Estoy en un grupo"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.mov.description"] = L"Comprueba si te estas moviendo"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.mov.example"] = L"/nb a\195\177ade 1 [Lambent Aura]mov:+[Healing Energy]\
\
Usa [Lambent Aura] si te estas moviendo, si no, usa [Healing Energy]"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.mov.fullname"] = L"Movimiento" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.nam.description"] = L"Only use an action (item/ability etc...) if the test string provided can be found as part of its name." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.nam.example"] = L" /nb a\195\177ade 1 [habilidad1]nombre:mago:+:e[habilidad2]\
\
Usa solo habilidad1 si el nombre del enemigo contiene el texto \"mago\"."
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.nam.fullname"] = L"Nombre"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.p.description"] = L"Comprueba si tienes la mascota activada o no"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.p.example"] = L"/nb a\195\177ade 1 [invoca al leon de guerra]p:-\
\
Invoca tu leon de guerra si no esta invocado ya"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.p.fullname"] = L"Mascota"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.rvr.description"] = L"Comprueba si tienes activada la bandera de RvR"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.rvr.example"] = L"/nb add 1 [Healing Potion]rvr:+\
\
Usa la poci\195\179n de curaci\195\179n solamente si tienes activada la badera de RvR"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.rvr.fullname"] = L"RvR (reino contra reino)"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.sc.description"] = L"Comprueba si eres miembro de un escenario o no"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.sc.example"] = L"/nb add 1 [Meltdown]sc:+\
\
Usa Meltdown solamente si eres miembro de un escenario" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.sc.fullname"] = L"Escenario"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.si.description"] = L"Comprueba si estas asediando o no"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.si.example"] = L" /nb a\195\177ade 1 [Poci\195\179n de curaci\195\179n]si:+\
\
Usa solamente una poci\195\179n de curaci\195\179n si est\195\161s asediando"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.si.fullname"] = L"Asedio"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.st.description"] = L"Usa esto para comprobar si el efecto de la habilidad esta linkado" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.st.example"] = L"/nb add 1 [Fervor]st:3:s:e:2[Ability 2][Ability 3]...\
\
Keep 3 stacks of Fervor on your target and refreshes them 2 seconds before they expire." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.st.fullname"] = L"Stack" -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.wb.description"] = L"Comprueba si eres miembro de una banda"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.wb.example"] = L"/nb a\195\177ade 1 [Meltdown]wb:+\
\
Usa Meltdown solo si eres miembro de una banda" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS.wb.fullname"] = L"Banda"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS_No_Description"] = L"Descripci\195\179n no disponible"
NerfedTalks.LANGUAGES.spanish["HELP_CHECKS_No_Example"] = L"Ejemplo no disponible"
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.abilityId"] = L"n\195\186mero (la ID de una habilidad, NO el link de clicado)" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.ap"] = L"numero (el numero requerido de AP)"
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.archetype"] = L"Arquetipos b\195\161sicos de WAR o los arquetipos por defecto definidos en NerfedButtons\
\
Arquetipos bases\
\
    * \"tank\",   -- Tanque\
    * \"mdps\",   -- DPS cuerpo a cuerpo\
    * \"rpdps\",  -- DPS fisico a distancia\
    * \"rmdps\",  -- DPS m\195\161gico a distancia\
    * \"rsupp\",  -- Curanderos a distancia\
    * \"msupp\",  -- Clase de apoyo cuerpo a cuerpo\
\
Agrupacion de arquetipos\
\
    * \"melee\",  -- cuerpo a cuerpo\
    * \"cast\",   -- invocador\
    * \"dps\",    -- DPS\
    * \"pdps\",   -- DPS fisico\
    * \"rdps\",   -- DPS a distancia\
    * \"supp\",   -- curandero\
    * \"wu\",     -- armas mixtas (cuerpo a cuerpo + DPS fisico a distancia)\
\
Otros\
\
    * \"npc\" -- (npcs y objetos de clase)" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.career"] = L"Clases b\195\161sicas de WAR:\
\
DPS fisicos a distancia\
\
    * en  = GameData.CareerLine.INGENIERO\
    * sw  = GameData.CareerLine.SOMBRIO\
    * sh  = GameData.CareerLine.PASTOR_DE_GARRAPATOS\
\
Tanque\
\
    * ib  = GameData.CareerLine.ROMPEHIERROS\
    * bg  = GameData.CareerLine.GUARDIA_NEGRA\
    * sm  = GameData.CareerLine.MAESTRO_DE_LA_ESPADA\
    * bo  = GameData.CareerLine.ORCO_NEGRO\
    * kbs = GameData.CareerLine.CABALLERO_DEL_SOL\
    * chs = GameData.CareerLine.ELEGIDO\
\
DPS cuerpo a cuerpo\
\
    * wh  = GameData.CareerLine.CAZADOR_DE_BRUJAS\
    * we  = GameData.CareerLine.ELFA_BRUJA\
    * wl  = GameData.CareerLine.LEON_BLANCO\
    * ma  = GameData.CareerLine.BARBARO\
    * sl  = GameData.CareerLine.MATADOR\
    * chp = GameData.CareerLine.REBANADOR\
\
Curanderos a distancia\
\
    * am  = GameData.CareerLine.ARCHMAGO\
    * sha = GameData.CareerLine.CHAMAN\
    * rp  = GameData.CareerLine.SACERDOTE_RUNICO\
    * zlt = GameData.CareerLine.FANATICO\
\
Ranged magical DPS\
\
    * bw  = GameData.CareerLine.HECHICERO_BRILLANTE\
    * sor = GameData.CareerLine.HECHICERO\
    * mag = GameData.CareerLine.MAGO\
\
Curanderos cuepo a cuerpo\
\
    * wp  = GameData.CareerLine.SACERDOTE_GUERRERO\
    * dok = GameData.CareerLine.DISCIPULO_DE_KHAINE\
\
Otros\
\
    * npc = 0 (monstruos)\
    * obj = -1 (puetas de castillo, ...)"
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.condition"] = L"cadena (una de las siguientes:)"
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.duration"] = L"number (duration at the end of the effect when the mod will ignore that the effect is applied, mostly useful to refresh debuffs before they run out.)" -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.effect"] = L"n\195\186mero (la id de una accion)"
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.hp"] = L"n\195\186mero (el n\195\186mero requerido de hp)"
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.hpPercent"] = L"n\195\186mero (el porcentaje requerido de hp)"
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.itemId"] = L"El identificador unico para un objeto. Usa /nb id [ItemLink] para conocer el id de un objeto" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.mechanic"] = L"n\195\186mero (el n\195\186mero requerido de puntos de carrera)"
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.need"] = L"+ or - (whether the check needs to be true (+) or false (-), skipping this means +)" -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.onlySelf"] = L"s or nothing (whether only player inflicted stacks are checked)" -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.stackCount"] = L"numero (el numero de identificacion, no el enlace)" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.target"] = L"p(jugador), f (objetivo amigo) o e (objetivo enemigo)"
NerfedTalks.LANGUAGES.spanish["HELP_PARAMS.virtualCooldown"] = L"numero (el enfriamiento virtual para usar esa habilidad)" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_actions"] = L"Lists all the actions (abilities and items) with their corresponding action ids." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_add"] = L"/NB ADD <slotnumber>[<AbilityLink>[;<check>]*]+\
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
NerfedTalks.LANGUAGES.spanish["HELP_checks"] = L"/NB CHECKS \
\194\160 lists all the checks available, their short name and their parameters.\
\
/NB CHECKS <check name>\
  provide detailed information regarding a specific check.\
  example: /nb checks st" -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_clear"] = L"Wipe out all NerfedButtons settings." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_conditions"] = L"Lists all the conditions on you (player), your friendly target, and your enemy." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_credits"] = L"List the authors and valuable contributors to the development of NerfedButtons." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_ddcheck"] = L"/NB DDCHECK list\
  Lists all the disabled default checks you have set.\
/NB DDCHECK <AbilityLink> [<CheckName>]\
  Toggles on or off the default check CheckName for the ability linked.\
  <AbilityLink> = The ability you want to disable a default check for, linked from the ability window.\
  <CheckName> = (Optional) The name of the default check you want to toggle. Possible values are :\
enabled, target and cooldown. If not specified then all disabled checks for the linked ability will be re-enabled." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_del"] = L" /NB DEL <numero de hueco>\
 borra la secuencia de habilidades de la barra de acciones  <numero de hueco>.\
ejemplo: /nb del 3" -- Needs review
NerfedTalks.LANGUAGES.spanish["HELP_dt"] = L"/NB DT list\
  Lists all the default targets you have set by command line and set in the career files.\
/NB DT clear\
  Clears all the default targets you have set by command line.\
/NB DT <AbilityLink> [<target>]\
  Adds or removes a default target for an ability\
  <AbilityLink> = Ability from the Ability Window inserted with Shift-click\
  <target> = (Optional) The default target to affect to that ability. If no value is entered then the default target set by command line for that ability will be removed (will not affect default target entered in the career files)." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_edit"] = L"/NB EDIT <slot_number>\
  Puts the command line you used for the <slot_number> back in the chat text box, to allow for easy editing.\
  <slot_number> = 1..48" -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_effects"] = L"Lista los efectos que sufris tu, tu objetivo amigo y tu objetivo enemigo. Muy util para obtener informaci\195\179n de las habilidades de efecto"
NerfedTalks.LANGUAGES.spanish["HELP_id"] = L" /NB ID <AbilityLink>\
  Muestra la ID de la habilidad en la ventana de chat"
NerfedTalks.LANGUAGES.spanish["HELP_list"] = L"/NB LIST \
  lists all bound quickbar slot numbers.\
/NB LIST all\
  lists all bound quickbar slot numbers and sequences\
/NB LIST <slot_number>\
  lists the ability sequence bound to slot <slot_number>\
  <slot_number> = 1..48" -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_macro"] = L"/NB MACRO list\
  Lists all the macros you have set to show at the end of sequences.\
/NB MACRO <ActionBarSlot> [<MacroNumber>]\
  Adds or removes a macro from an action bar slot\
  <ActionBarSlot> = The number of the slot where the macro will appear.\
  <MacroNumber> = (Optional) The number of the macro (between 1 and 42) that will be displayed.\
If none is specified it will clear any previously set macr for this slot." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_params"] = L"/NB PARAMS\
  muestra la lista de parametros y sus posibles valores."
NerfedTalks.LANGUAGES.spanish["HELP_pcreate"] = L"/NB PCREATE <description>\
\
Create a new NB profile." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_pcur"] = L"/NB PCUR\
\
Returns the description of the current NB profile." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_pdel"] = L"/NB PDEL <profile id>\
\
Delete a profile by its ID." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_pdesc"] = L"/NB PDESC <description>\
\
Change the description of the current NB profile." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_pforcedel"] = L"/NB FORCEDEL <profile id>\
\
Forced deletion of a profile by its ID." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_plist"] = L"/NB PLIST\
\
List all available NB profiles." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_pswitch"] = L"/NB PSWITCH <profile id>\
\
Switch to a different NB profile." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_toggleautodismount"] = L"/NB TOGGLEAUTODISMOUNT\
\
Enabled or disabled NB sequences to trigger the autodismount addon." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_toggleblank"] = L"/NB TOGGLEBLANK\
  Toggles whether the last ability of a sequence (default) or a blank slot is displayed when no ability is ready." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_toggledisabled"] = L"/NB TOGGLEDISABLED\
\
Toggle whether the final ability in a sequence should be disabled if it fails its checks." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_togglefullsoc"] = L"/NB TOGGLEFULLSOC\
  Toggles whether StayOnCast will last for half a second (default) or for the full duration of the channeling." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_togglepages"] = L"/NB TOGGLEPAGES\
  Toggles action bar pages support on or off (default).\
 When pages support is turned on, each page of the hotbar may have different sequences assigned." -- Requires localization
NerfedTalks.LANGUAGES.spanish["HELP_vcd"] = L"/NB VCD list\
  Lists all the career-wide VCDs you have set.\
/NB VCD clear\
  Clears all the career-wide VCDs you have set.\
/NB VCD <AbilityLink> [<cooldown>]\
  Adds or removes a career-wide cooldown for an ability\
  <AbilityLink> = Ability from the Ability Window inserted with Shift-click\
  <cooldown> = (Optional) The virtual cooldown to affect to that ability. If no value is entered then the careerwide cooldown for that ability will be removed." -- Requires localization
NerfedTalks.LANGUAGES.spanish["Immovable"] = L"El nombre textual del buff no removible en tu lengua original, Comprueba el buff cuando aparece" -- Needs review
NerfedTalks.LANGUAGES.spanish["MACRO_LIST"] = L"nb> Lista de macros afectadas"
NerfedTalks.LANGUAGES.spanish["MACRO_RESET"] = L"nb> Macro reset for slot " -- Requires localization
NerfedTalks.LANGUAGES.spanish["MACRO_SET"] = L"nb> Macro set for slot " -- Requires localization
NerfedTalks.LANGUAGES.spanish["MSG1"] = L"Escribe /NB para ver la ayuda"
NerfedTalks.LANGUAGES.spanish["NOSEQS_BOUND"] = L"nb> no sequences bound." -- Requires localization
NerfedTalks.LANGUAGES.spanish["NO_SEQ_BND"] = L"nb> no sequence bound to slot." -- Requires localization
NerfedTalks.LANGUAGES.spanish["OFF"] = L"Apagado"
NerfedTalks.LANGUAGES.spanish["ON"] = L"Encendido"
NerfedTalks.LANGUAGES.spanish["PARAMS_1"] = L"\
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
NerfedTalks.LANGUAGES.spanish["PARAMS_2"] = L"<career> = cadena (una de las sigueintes :)" -- Needs review
NerfedTalks.LANGUAGES.spanish["PARAMS_3"] = L"<archetype> = cadena (una de las sigueintes :)" -- Needs review
NerfedTalks.LANGUAGES.spanish["PARAMS_4"] = L"Para mas informacion sobre las clases o los arquetipos echale un vistazo al archivo NerfedAPI.lua"
NerfedTalks.LANGUAGES.spanish["PROFILE_pcreate"] = L"Please enter a description for the profile. Ex : /nb pcreate career - spec" -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pcreate2"] = L"NB created profile" -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pcur"] = L"Current NB profile :" -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pdel"] = L"NB profile doesn't exist." -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pdel2"] = L"NB profile in use by" -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pdel3"] = L"NB profile" -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pdel4"] = L"deleted" -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pdesc"] = L"Please enter a description for the profile. Ex : /nb pdesc career - respec" -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pforcedel"] = L"NB profile for current character can't be deleted, use /nb clear to empty the profile." -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pforcedel2"] = L"NB profile doesn't exist." -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_plist"] = L"Listing NB profiles :" -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pswitch"] = L"NB profile doesn't exist." -- Requires localization
NerfedTalks.LANGUAGES.spanish["PROFILE_pswitch2"] = L"NB profile switched to" -- Requires localization
NerfedTalks.LANGUAGES.spanish["SEQS_BOUND"] = L"nb> sequences bound to slot(s): " -- Requires localization
NerfedTalks.LANGUAGES.spanish["SEQS_FOUNDL"] = L"Secuencia(s) encontrada(s)"
NerfedTalks.LANGUAGES.spanish["SEQ_ERR"] = L"nb> habilidad no lista en la secuencia"
NerfedTalks.LANGUAGES.spanish["UNBIND_SUCC"] = L"nb> unbind successfull." -- Requires localization
NerfedTalks.LANGUAGES.spanish["Unstoppable"] = L"El nombre textual del buff imparable en tu lengua original, Comprueba el buff cuando aparece" -- Needs review
NerfedTalks.LANGUAGES.spanish["VCD_CLEAR"] = L"nb> All career-wide VCDs cleared." -- Requires localization
NerfedTalks.LANGUAGES.spanish["VCD_LIST"] = L"nb> List of career-wide VCDs :" -- Requires localization
NerfedTalks.LANGUAGES.spanish["VCD_RESET"] = L"nb> Career-wide cooldown reset for ability " -- Requires localization
NerfedTalks.LANGUAGES.spanish["VCD_SET"] = L"nb> Career-wide cooldown set for ability " -- Requires localization
NerfedTalks.LANGUAGES.spanish["Welcome"] = L"Se ha cargado NerfedButtons con exito. Escribe /NB para ver la ayuda!"

