# What does it do, and how?

## Introduction

NerfedButtons lets you define prioritised and conditional
ability/item/macro lists for your hotbar slots. NerfedButtons will
automatically ensure that the highest priority ability/item/macro that
passes its conditions in a pre-defined sequence is bound to a hotbar
slot at any time.

Or more succinctly: NerfedButtons allows you to assign a conditional
sequence of abilities to each hotbar slot. 

## Conditional Sequencing Explained

First thing to understand is that NerfedButtons is a conditional sequencer.

The WAR game-client will perform basic checks on each ability in your
sequence every 10th of a second. If the first ability fails any of
these basic checks then the second ability is tested (and so on) until
we arrive at an ability that is; in range, not cooling down, etc...
NerfedButtons then updates the hotbar slot with the first ability in
your sequence that does not fail any checks.

In addition the the basic in-game checks NerfedButtons allows you to add all
manner of additional checks to the abilities in your sequences.

### Simple Sequence Example

Lets take a simple 2 ability Bright Wizard sequence to explain what we mean:

Example Sequence : [Ignite] [Detonate] `/nb add 1 [Ignite][Detonate]`

Examining the description of the [Ignite] ability provides us with the
following list of conditions WAR itself performs before enabling [Ignite] for
use:

 *   You have 35 Action Points
 *   The ability is not on cooldown (No cooldown)
 *   The target is within 100 feet

The [Ignite] ability has no cooldown, therefore the ability will
always be enabled as long as you have 35 or more Action Point.

In fact [Detonate] has a higher Action Point requirement than [Ignite]
therefore the current sequence will never get past the [Ignite] ability in its
current form!

Examining the description of the [Detonate] ability provides us with
the following list of conditions WAR itself performs before enabling [Detonate]
for use:

 *  You have 40 Action Points
 *  The ability is not on cooldown (10s cooldown)
 *  The target is within 80 feet
 *  Target must be Hexed

The big thing of note here is that [Detonate] will only be enabled if
the target is Hexed. Good thing [Ignite] places a Hex on your target!

To get this sequence to work we need to tell WAR to not use [Ignite] if the
target is already under the effects of the [Ignite] hex. This is where the
NerfedButtons checks come into play...

Don't worry if you don't understand the `/nb add ......` commands used below as
yet, they are just there for reference. You'll learn more about the syntax to
configure your sequences later in this tutorial.

`NerfedButtons allows you to tag your own additional checks onto each ability
in your sequence. A full list of checks can be found in the 
[Checks Reference Manual](Checks-Reference-Manual.md). Some obvious options 
to stop reapplying [Ignite] again and again when it's already on our target include:

 1. Adding a 9 second VirtualCooldown check to the *Ignite* ability so when its
    on cooldown we will progress to the next ability in the sequence. 
    ```/nb add 1 [Ignite]cd:9[Detonate]```


 2. Adding a Condition check to the *Ignite* ability so if the target is
   already under the effects of any Hex then it will not try and reapply it
   and instead continue to the next ability int he sequence.

    ```/nb add 1 [Ignite]con:hex:-:e[Detonate]```


 3. Adding a Stack check to the *Ignite* ability so if the target is
   already under the effects of *Ignite* then it will not try and reapply
   it and instead continue to the next ability in the sequence.

    ```/nb add 1 [Ignite]st:1:s:e[Detonate]```

Which is the most suitable very much depends on what you are trying to achieve:

Option 1 has an obvious failing in that a VirtualCooldown check does
not know if your [Ignite] got disrupted or removed. You could get
yourself into a situation where you've cast [Ignite] on your target,
the target cures itself of your Hex and you've got to wait until your
VirtualCooldown expires before you can do anything else (as [Ignite]
will be on cooldown asn [Detonate] won't work as you don't have a Hex on
your target).

Option 2 is much more interesting in that we are now actively checking
to see if the target is afflicted by a Hex. If they are afflicted then
we disable the [Ignite] ability and [Detonate] can be used. Problem we
have here of course is that Detonate has a in-built 10 second cooldown,
meaning that if someone else out there is hexing lots of targets, you'll
be standing around doing nothing most of the time waiting for [Detonate]
to refresh...

This brings us to probably the best option in this case, Option 3 where
we can check if the target is under the effect of [Ignite] itself. We
can also use this check to the check to only taking account [Ignite]
effects cast by ourselves (there courld be another Bright Wizard out
there spamming [Ignite] too).

Remember: This is not a basic sequencer! If your first ability is always
valid and has no cooldown then you will never see the second ability...

## WAR built-in Checks

A number of conditional checks are built into WAR by default and are performed on all abilities. These include:

 *  Is the ability waiting for its cooldown?
 *  Is the ability in range?
 *  Can the ability be used from my current position relative to the target (to the side, behind etc.)? 

Each of these checks is made against each ability (highest priority
first) every 10th of a second. If the first ability fails any checks
then the second ability is tested until we arrive at an ability
that is; not cooling down, is in range, and my character is in the
correct position. NerfedButtons then updates the hotbar slot with the
appropriate ability from your sequence.

Make sense... hopefully :)

## NerfedButtons Configurable Checks

NerfedButtons support a VERY large number of configurable checks. These include:

 *  number of instances (stack) of ability already on target cast by self or others.
 *  hp/ap/career mechanic value
 *  presence of a condition
 *  presence of an effect
 *  presence of your pet
 *  career of a target
 *  archetype of a target
 *  ...

and much MUCH more! 

For an online web view see the 
[Check Reference Manual](Check-Reference-Manual.md), or to get the fully up 
to date list in-game use the `/nb checks` command.

Some of these checks are more useful than others, but all have their place. The
stack check is probably the most used due to its sheer flexibility, it can
limit an ability that applies an effect on your target to only being used once
(Rune Priest Rune Of Regeneration ability is a good example as the effect
doesn't stack) or use it to keep a stack of an ability effect on your target
that does stack (maybe a stack of 3 when using the the Witch Hunter Fervor
ability). `/nb add 1 [Rune Of Regeneration]st:1:s[Grungni's Gift]`

`/nb add 1 [Fervor]st:3:s[Absolution][Razor Strike]`

The effect check is another VERY useful check that allows you to perform
stack like checking but against effects appleid from a different
ability.

Note: the 2 examples above do not have a target or pre-expiry duration parameters for the stack check. This is because these are optional parameters. More on this later.

## Whats next?

The rest of the tutorial takes you through the each of the NerfedButtons commands and checks explaining their usage.

Have fun!

-NerfedWar

