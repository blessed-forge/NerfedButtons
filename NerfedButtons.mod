<?xml version="1.0" encoding="UTF-8"?>
<ModuleFile xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <UiMod name="NerfedButtons" version="3" date="29/12/2009" >
    
        <Author name="NerfedWar" email="nerfed.war@gmail.com" />
        
        <Description text="Condition based automatic ability swapping." />
        
        <VersionSettings gameVersion="1.4.1" windowsVersion="1.0" savedVariablesVersion="1.0" />
        
        <Dependencies>
            <Dependency name="EASystem_Tooltips" />
            <Dependency name="EA_ActionBars" />
            <Dependency name="LibSlash" />
        </Dependencies>
        
        <WARInfo>
            <Categories>
                <Category name="ACTION_BARS" />
            </Categories>
            <Careers>
                <Career name="ARCHMAGE" />
                <Career name="BLACKGUARD" />
                <Career name="BLACK_ORC" />
                <Career name="BRIGHT_WIZARD" />
                <Career name="CHOPPA" />
                <Career name="CHOSEN" />
                <Career name="DISCIPLE" />
                <Career name="ENGINEER" />
                <Career name="IRON_BREAKER" />
                <Career name="KNIGHT" />
                <Career name="SHAMAN" />
                <Career name="SQUIG_HERDER" />
                <Career name="MAGUS" />
                <Career name="MARAUDER" />
                <Career name="RUNE_PRIEST" />
                <Career name="SHADOW_WARRIOR" />
                <Career name="SLAYER" />
                <Career name="SORCERER" />
                <Career name="SWORDMASTER" />
                <Career name="WARRIOR_PRIEST" />
                <Career name="WHITE_LION" />
                <Career name="WITCH_ELF" />
                <Career name="WITCH_HUNTER" />
                <Career name="ZEALOT" />
            </Careers>
        </WARInfo>

        <Files>
            <File name="NerfedIcon.xml" />
            <File name="NerfedUtils.lua" />
            <File name="NerfedButtons.lua" />
            <File name="NerfedAPI.lua" />
            <File name="NerfedChecks.lua" />
            <File name="NerfedDecisions.lua" />
            <File name="NerfedEngine.lua" />
            <File name="NerfedMatchMaking.lua" />
            <File name="NerfedMemory.lua" />
            <File name="NerfedTalks.lua" />
            <File name="NerfedLists.lua" />
            <File name="NerfedUtils.lua" />
			<File name="NerfedMacro.lua" />
			<File name="NerfedMacro.xml" />
            
            <File name="Checks\AbilityEnabled.lua"/>
            <File name="Checks\AbilityOnCooldown.lua"/>
            <File name="Checks\AbilityTargetValid.lua"/>
            <File name="Checks\ActionPoints.lua"/>
            <File name="Checks\Archetype.lua"/>
		    <File name="Checks\BunnyHop.lua"/>
            <File name="Checks\Career.lua"/>
            <File name="Checks\CareerMechanic.lua"/>
            <File name="Checks\Combat.lua"/>
            <File name="Checks\Condition.lua"/>
            <File name="Checks\Effect.lua"/>
            <File name="Checks\EnemyTarget.lua"/>
            <File name="Checks\FriendlyTarget.lua"/>
		    <File name="Checks\HasTactic.lua"/> 
            <File name="Checks\HitPoints.lua"/>
            <File name="Checks\HitPointsPercent.lua"/>
            <File name="Checks\ItemEnabled.lua"/>
            <File name="Checks\InAParty.lua"/>
            <File name="Checks\InMyParty.lua"/>
            <File name="Checks\Movement.lua"/>
            <File name="Checks\Name.lua"/>
            <File name="Checks\Pet.lua"/>
            <File name="Checks\RVR.lua"/>
            <File name="Checks\Scenario.lua"/>
            <File name="Checks\Siege.lua"/>
            <File name="Checks\Stack.lua"/>
            <File name="Checks\Tier.lua"/>
            <File name="Checks\VirtualCooldown.lua"/>
            <File name="Checks\WarBand.lua"/>
            
            <File name="Languages\english.dev.lua"/>
            <File name="Languages\english.lua"/>
            <File name="Languages\french.lua"/>
            <File name="Languages\german.lua"/>
            <File name="Languages\italian.lua"/>
            <File name="Languages\japanese.lua"/>
            <File name="Languages\korean.lua"/>
            <File name="Languages\russian.lua"/>
            <File name="Languages\s_chinese.lua"/>
            <File name="Languages\spanish.lua"/>
            <File name="Languages\t_chinese.lua"/>
            
            <File name="CharClasses\ARCHMAGE.lua"/>
            <File name="CharClasses\ASSASSIN.lua"/>
            <File name="CharClasses\BLACKORC.lua"/>
            <File name="CharClasses\BLOOD_PRIEST.lua"/>
            <File name="CharClasses\BRIGHT_WIZARD.lua"/>
            <File name="CharClasses\CHOPPA.lua"/>
            <File name="CharClasses\CHOSEN.lua"/>
            <File name="CharClasses\ENGINEER.lua"/>
            <File name="CharClasses\IRON_BREAKER.lua"/>
            <File name="CharClasses\KNIGHT.lua"/>
            <File name="CharClasses\MAGUS.lua"/>
            <File name="CharClasses\RUNE_PRIEST.lua"/>
            <File name="CharClasses\SEER.lua"/>
            <File name="CharClasses\SHADE.lua"/>
            <File name="CharClasses\SHADOW_WARRIOR.lua"/>
            <File name="CharClasses\SHAMAN.lua"/>
            <File name="CharClasses\SLAYER.lua"/>
            <File name="CharClasses\SORCERER.lua"/>
            <File name="CharClasses\SQUIG_HERDER.lua"/>
            <File name="CharClasses\SWORDMASTER.lua"/>
            <File name="CharClasses\WARRIOR.lua"/>
            <File name="CharClasses\WARRIOR_PRIEST.lua"/>
            <File name="CharClasses\WITCH_HUNTER.lua"/>
            <File name="CharClasses\ZEALOT.lua"/>
            
            <File name="UI\NBSBCommon.lua" />
            <File name="UI\Lang.lua" />
            <File name="UI\NBSBRegister.lua" />
            <File name="UI\NBSBActionButton.xml" />
            <File name="UI\NBSBActionButton.lua" />
            <File name="UI\NBSBActionBar.xml" />
            <File name="UI\NBSBActionBar.lua" />
            <File name="UI\NBSBParam.xml" />
            <File name="UI\NBSBParam.lua" />
            <File name="UI\NBSBChecks.xml" />
            <File name="UI\NBSBChecks.lua" />
            <File name="UI\NBSBCore.xml" />
            <File name="UI\NBSBCore.lua" />
            <File name="UI\NBSetup_Save.xml"/>
            <File name="UI\NBSetup_Save.lua"/>
            <File name="UI\NBSBCheckTooltips.xml"/>
            <File name="UI\NBSBCheckTooltips.lua"/>
        </Files>
        
        <SavedVariables>
            <SavedVariable name="NerfedMemory.global" global="true" />
            <SavedVariable name="NerfedMemory.actionDataCache" global="true" />
            <SavedVariable name="NerfedMemory.bindings" />
            <SavedVariable name="NerfedMemory.macros" />
            <SavedVariable name="NerfedMemory.profiles" />
        </SavedVariables>
        
        <OnInitialize>
            <CallFunction name="NerfedButtons.Initialize" />
            <CreateWindow name="NBSBCoreWindow" />
            <CreateWindow name="NBSetup_Save" />
            <CreateWindow name="NBSBCheckTooltip" />
            <CallFunction name="NBSBCore.Initialize" />
            <CallFunction name="NerfedMacro.registerMacroFunctions" />
        </OnInitialize>
        
        <OnUpdate>
            <CallFunction name="NerfedEngine.OnUpdate" />
            <CallFunction name="NerfedButtons.OnUpdate" />
        </OnUpdate>
        
    </UiMod>
</ModuleFile>

