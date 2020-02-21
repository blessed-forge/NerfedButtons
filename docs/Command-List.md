
# Command List

Adding, editing and removing sequences can all be done using the commands:
```
    /nb ui
    /nb add
    /nb edit
    /nb del
```

For the advanced user, NerfedButtons has a host of other commands to retrieve
in-game information and customise its use:

Note on example syntax: Words surrounded by square brackets denote an in-game
hyperlink that is added to the chat input by shift-clicking on the
item/ability/macro. See the article on shift-clicking for more information.

## Contents

1. [/nb](#nb) - display the welcome message
2. [/nb actions](#nb-actions) - list all actions/morales/tactics you know and their IDs
3. [/nb add](#nb-add) - add a new sequence
4. [/nb checks](#nb-checks) -  list available checks
5. [/nb conditions](#nb-conditions) - list current conditions
6. [/nb credits](#nb-credits) - list NerfedButtons authors
7. [/nb ddcheck](#nb-ddcheck) - list disabled default checks
8. [/nb del](#nb-del) - delete a sequence
9. [/nb dt](#nb-dt) - force a default target
1. [/nb clear](#nb-clear) - wipe all settings
1. [/nb effects](#nb-effects) - list current effects with their IDs
1. [/nb help](#nb-help) - display top level help
1. [/nb id](#nb-id) - get the ID of an ability
1. [/nb macro](#nb-macro) - list macros set to show at the end of sequences
1. [/nb params](#nb-params) - display the list of parameters
1. [/nb pcreate](#nb-pcreate) - create a new profile
1. [/nb pcur](#nb-pcur) - return the description of the current profile
1. [/nb pforcedel](#nb-pforcedel) - force deletion of a profile by its ID
1. [/nb pdel](#nb-pdel) - delete a profile by its ID
2. [/nb pdesc](#nb-pdesc) - change the description of the current profile
2. [/nb plist](#nb-plist) - list available profiles
2. [/nb pswitch](#nb-pswitch) - switch to a different profile
2. [/nb toggleautodismount](#nb-toggleautodismount) - enable/disable autodismount
2. [/nb toggleblank](#nb-toggleblank) - toggle showing the last ability when none ready
2. [/nb toggledisabled](#nb-toggledisabled) - toggle disabling the last ability
2. [/nb togglefullsoc](#nb-togglefullsoc) - toggle whether StayOnCast lasts full cast time
2. [/nb togglepages](#nb-togglepages) - allow different sequences on different actionbar pages
2. [/nb ui](#nb-ui) - show the gui
2. [/nb vcd](#nb-vcd) - add a career-wide virtual cooldown on an ability

## /nb
Displays the welcome message.

## /nb actions
Lists each and every action/morale/tactic you have learned together with their
unique id. Useful as a reference when using checks that cross reference the
status of other abilities.

## /nb add
`/NB ADD <slotnumber>[<AbilityLink>[;<check>]*]+`
  Add a new sequence. See the tutorials for information on how to use the
  command-line and UI to add and edit sequences.
  example: `/nb add 1 [Melee Attack][Ranged Attack]`

## /nb checks
Lists all the checks available, their short name and their parameters.

`/NB CHECKS <check name>`
  provide detailed information regarding a specific check.
  example: /nb checks st

## /nb conditions
Lists all the conditions on you (player), your friendly target, and your enemy.

## /nb credits
List the authors and valuable contributors to the development of NerfedButtons.

## /nb ddcheck
`/NB DDCHECK list`
  Lists all the disabled default checks you have set.

`/NB DDCHECK <AbilityLink> [<CheckName>]`
  Toggles on or off the default check CheckName for the ability linked.
  `<AbilityLink>` = The ability you want to disable a default check for, linked from the ability window.
  `<CheckName>` = (Optional) The name of the default check you want to
                  toggle. Possible values are : `enabled`, `target` and `cooldown`. If
                  not specified then all disabled checks for the linked ability will be
                  re-enabled.

## /nb del
`/NB DEL <slot number>`
  Deletes the ability sequence binding to quickbar slot <slot number>.
  example: `/nb del 3`

## /nb dt
NerfedButtons tries to determine the default target (self, friendly, enemy) for
each of your abilities, but sometimes gets it wrong. The `/nb dt` command lets
you force a default target for an ability.  The possible options are `p`
(player), `f` (friendly target) and `e` (enemy target).

    `/nb dt [Consume Strength] f`

    -- will set the default target for consume strength to the friendly target.

## /nb clear
Wipe out all NerfedButtons settings.

## /nb effects
List all the effects (with unique IDs) that are affecting you (self), your
friendly and enemy targets. Great way to get hold of an id for an ability used
by another player.

## /nb help
Display top level help document.

## /nb id
Retrieve the ID of an ability.

    `/nb id [Consume Strength]`

    -- will return the ID of the ability.

## /nb macro
  `/NB MACRO LIST`
  Lists all the macros you have set to show at the end of sequences.

  `/NB MACRO <ActionBarSlot> [<MacroNumber>]`
  Adds or removes a macro from an action bar slot
  `<ActionBarSlot>` = The number of the slot where the macro will appear.
  `<MacroNumber> `= (Optional) The number of the macro (between 1 and 42) that will be displayed.
  If none is specified it will clear any previously set macr for this slot.

## /nb params
Displays the list of parameters and their possible values.

## /nb pcreate
`/NB PCREATE <description>`
  Create a new NB profile.

## /nb pcur
Returns the description of the current NB profile.

## /nb pforcedel
`/NB FORCEDEL <profile id>`
  Forced deletion of a profile by its ID.

## /nb pdel
`/NB PDEL <profile id>`
  Delete a profile by its ID.

## /nb pdesc
`/NB PDESC <description>`
   Change the description of the 'current' NB profile.

## /nb plist
List all available NB profiles.

## /nb pswitch
`/NB PSWITCH <profile id>`
  Switch to a different NB profile.

## /nb toggleautodismount
Enabled or disabled NB sequences to trigger the autodismount addon.

## /nb toggleblank
When this is off (default) the last ability of a sequence will still be
displayed when no ability from this sequence is ready. When it is on then the
button will be cleared when no ability is ready.

## /nb toggledisabled
Use this to toggle disabling of the last ability in a chain should it fail its checks.

## /nb togglefullsoc
Toggles whether StayOnCast will last for half a second (default) or for the
full duration of the channeling.

## /nb togglepages
Allow different sequences on different actionbar pages.

## /nb ui
Display the graphical user interface.

## /nb vcd
Will add a career-wide virtual cooldown to an ability (that will be used for
every instance of that ability, in every sequences).

    `/nb vcd [Acid Bomb] 3`

    -- give 3 seconds for the grenade to reach it's target.

