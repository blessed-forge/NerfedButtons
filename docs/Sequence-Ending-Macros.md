# Sequence Ending Macros

NerfedButtons supports ending your sequences with a macro. If a macro is added
to a sequence, the macro will be used if all the abilities/items in your
sequence fail their checks.

## Introduction

To set a macro for a sequence you use the `/nb macro` command:

```
/nb macro <button id> <macro id>
```

To see which buttons have been assigned macros:

```
/nb macro list
```

To remove a macro that's already been set:

```
/nb macro <button id>
```

## Macros Provided with NerfedButtons

Writing your own macros can be a bit daunting so we've provided a few useful
macros in the NerfedMacro.lua file. These are automatically registered as macro
ids 7 through 9 so you can use them straight away.

Macro Id | Macro Icon | Title
 
7 | ?? | Target next friendly

8 | ?? | Target next hurt friendly

9 | ?? | Target most hurt friendly

10| ?? | Use the Detaunt Helper addon to target whoever is doing the most DPS
to you at this moment.


### Simple examples of using macros 8 and 9:

#### Cycle Heal over Time

Cover all hurt (<80%) targets with a Heal over Time.

```
/nb add 1 [Lambent Aura]st:1:s:f;hpp:80:-:f
/nb macro 1 8
```

#### Emergency Bubble and Heal

Get an emergency Bubble and Heal onto someone under pressure (<60%).

```
/nb add 2 [Shield of Saphery]st:1:s;hpp:60:-:f[Boon of Hysh]hpp:60:-:f /nb
macro 2 9
```

