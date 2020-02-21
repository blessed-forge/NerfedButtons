
# How do I use it?

## Contents

1. [The Basics](#the-basics)
   1. [Creating a NerfedButton](#creating-a-nerfedbutton)
      1. [Command-line add command](#command-line-add-command)
      1. [Graphical Interface add](#graphical-interface-add)
2. [Self and Other Buff/Debuff Stacking (a complex example)](#self-and-other-buffdebuff-stacking-a-complex-example)
   1. [Additionally](#additionally)
3. [The add command](#the-add-command)
4. [Friendly or Enemy Target](#friendly-or-enemy-target)
5. [The need parameter](#the-need-parameter)
6. [Virtual Cooldown](#virtual-cooldown)
   1. [Global ability cooldown](#global-ability-cooldown)
   1. [Specific cooldown](#specific-cooldown)

## The Basics

Instead of dragging and dropping abilities from your abilities window
onto your actionbar, you define sequences of abilities using either the
graphical-interface (`/nb ui`) or the command-line add slash command 
(`/nb add`). 

### Creating a NerfedButton 
#### Command-line add command

The syntax for the add command.
```
/nb add <slot> [ability1][ability2][ability3]...
```

Important: The [] around the abilities indicate that the ability has
been added to the command-line by shift-clicking on an ability icon
from within the Abilities Window. `/nb add 1 [Brutal Assault][Grim Slash]`
will bind these two skills to hotbar slot 1. 

#### Graphical Interface add

Launch the GUI by either entering `/nb ui` into chat or clicking the NerfedButtons setting minimap button. 

Drag and drop the abilities you want in your sequence.

The sequence begins on the left, so put your 1st
ability in the left hand slot.

To add a check to an ability, click on the ability (it will be highlighted)
and click the + button to display a drop down list of checks.

Select the check you want to add.

Once a check has been selected you can obtain context sensitive help by
hovering over the + button.

Finally click the + button to confirm the addition of the check.

To the right of the check any parameters for the check will be displayed.

Once you have filled in your parameters and added checks to the other
abilities (if required), click the Save button to assign your sequence to a
hotbar slot.

The 'Name' of the button should be the id of the hotbar slot you want your
seuqnce to be assigned to. The addon should be set to NerfedButtons.

Note: The reason for the Addon dropdown is that NerfedButtons integrates
into other addons (NBSquared, Detaunt Helper,...) and they can also be
configured via the GUI if they are installed.

## Self and Other Buff/Debuff Stacking (a complex example)

By using the stack check you can and limit how many instances of a buff can be
stacked on a target before you will stop trying to stack another copy (and move
onto the next ability in the chain).

Here is a simple Rune Priest example: 
``` 
/nb add 1 [Rune Of Immolation]st:1:s[Rune Of Fire][Rune Of Striking]
``` 

Checks and their parameters can be passed after each link. In this example we
have `st:1:s`. The `st` is the name of the check (stacks), and the values after
each `:` are the parameters of the check. The first parameter is the number of
stacks you want at most, the second is whether we only take into account stack
done by yourself or not (s means only self, nothing mean anyone's stacks)

If we had done;
``` 
/nb add 1 [Rune Of Immolation]st:1[Rune Of Fire][Rune Of Striking]
``` 

then the check would also count Rune of Immolation debuffs applied by other
players and we would not reapply until there is no such debuff.

Make sense? ...hopefully :)

### Additionally

A more meaningful example than above combining both self and other stacking would be:
``` 
/nb add 2 [Oath Rune Of Power]st:1[Rune Of Shielding]st:1:s[Rune Of Regeneration]st:1:s[Grungni's Gift]
``` 

In this example if you or any other has placed the [Oath Rune Of Power] buff on
a target then you will not try and reapply it until it has expired or been
removed by some other means. Also note that this example does not include
targets for the checks. Abilities by default have a default target determined
by NerfedButtons. You only need to add a target if you want to test against a
different target than this default. 

## The add command

The syntax for the add command is :
``` 
/nb add <slotnumber> [<AbilityLink>[;<check>]*]+
``` 

The `;` before the first test for an ability is optional.

If you are not familiar with regular expression, the line above means that
after the `<slotNumber>` you can put one or more <AbilityLink>, and that after
each one you can put as many `<check>` as you want (or 0), each separated by `;`

The order of the checks is not important. You can use the same check multiple times.

 * `<slotnumber>` = 1..48
 * `<AbilityLink>` = Ability from the Ability Window inserted with Shift-click
 * `<check>` = `<shortName>[:<parameter>]+`

The line above means that `<check>` must be the `<shortName>` of a check,
followed by one or more parameters, each separated by :

The order of the parameters is very important, you always must input them in
order, and even though you can forget the ones you don't want at the end of the
parameters, you cannot skip one in the middle. To leave one blank in the middle
you have to put the : for that parameter, and put the : for the following one
right after it.

In the following examples the s is the short name for stack, the first
parameter is the number of stacks, the second (that we skip in the second
example) is the onlySelf flag, and the third is the target.

    <check> example 1: To set just one parameter in the begining : st:1
    <check> example 2: To skip a parameter in the middle : st:1::f 

To get a list of available checks, their short name, and their parameters use
the /nb checks command.

To get a list of the possible values for each parameter use the /nb params command.

More examples :

1. `/nb add 3 [Brutal Assault]st:1:s[Grim Slash]`
1. `/nb add 1 [Consume Strength]st:1:s:f[Cleave Soul]`
1. `/nb add 1 [Absolution]cm:5[Fervor]st:3:s[Razor Strike]`
1. `/nb add 2 [Fervor]st:3:s[Fervor]cd:6[Razor Strike]`
1. `/nb add 1 [Acid Bomb]st:1:s;cd:2.245[Flashband Grenade]st:1:s`

## Friendly or Enemy Target

By default NerfedButtons determines whether to count the effect stack on the
friendly or enemy target based on whether the source ability was a buff or a
debuff. You may want to override this behavior for certain abilities.

A good example is the DoK [Consume Strength]. This ability is considered a
debuff by War even though in addition to debuffing your target it buffs your
defensive target. If you were to limit the stack count to one (by self): 
```
/nb add 1[Consume Strength]st:1:s
```

Then being considered a debuff the ability would cast again if you switched
targets (even if you still have the buff from the previous target).

You can override this behavior in 2 different ways :

1. Set a default target for the ability
1. Give a target parameter to your check(s) 

You can set a default target by the command line :
```
/nb dt [Consume Strength] f
```

This will set the default target for consume strength to the friendly target.
The possible options are `p` (player), `f` (friendly target) and `e` (enemy
target).

In the add command line, you can set a target for the checks, taking the stack check as an example :
```
/nb add 1[Consume Strength]st:1:s:f
```

This will do as above but only for this particular instance of consume strength.

Note: if you think the default target chosen by NerfedButtons is incorrect,
please inform the developers who will update the addon accordingly.

## The need parameter

A lot of checks have a need parameter, this is to indicate whether you want to
check for the basic meaning of the check or the opposite. For example :
```
/nb add 1[Call War Lion]p:-[Nature's Bond]
```

In this case Call War Lion will only be available when you don't have a pet. a
`p:+` would be the opposite, only make the ability available when you have a
pet.


## Virtual Cooldown 
### Global ability cooldown

You can add a global virtual cooldown to an ability (that will be used for every instance of that ability, in every sequence) by using the following command line :
```
/nb vcd <ability link> [<virtualCooldown>]
```

You put the ability link by shift clicking, like in the add command

virtualCooldown (optional) is in seconds and overlaps the global and default cooldown, so adding something equal or lower than 1.5 or lower than the default cooldown wouldn't do anything. If the virtual cooldown is not entered, it clears any previously entered vcd for that ability.

For example :

-- Acid Bomb : gives time to the grenade to reach it's target
```
/nb vcd [Acid Bomb] 3
```

### Specific cooldown

You also add a cooldown specific to a position in a sequence when entering that
sequence in game, like a check, with cd as it's name and the vcd as the only
parameter. If a global VCD is set for the same ability, this one will override
it.
```
/nb add 2 [abilityId]cd:virtualCooldown
```

virtualCooldown being a value in seconds (can be decimal)

-- Fervor : refresh the dot only when the timer is almost up
```
/nb add 2[Fervor]3s[Fervor];cd:6.5[Razor Strike]
```


