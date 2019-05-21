--== Witch Hunter ==--
NerfedButtons.WITCH_HUNTER = {}

--== Default targets ==--
-- Blessed Bullets Of Cleansing
NerfedButtons.DefaultTarget[8089] = NerfedButtons.TARGET.PLAYER
-- Blessed Bullets Of Confession
NerfedButtons.DefaultTarget[8099] = NerfedButtons.TARGET.PLAYER
-- Blessed Bullets Of Purity
NerfedButtons.DefaultTarget[8084] = NerfedButtons.TARGET.PLAYER

--== Stay on cast ==--

--== Ability functions ==--
-- Test function -- Confess!
--NerfedButtons.Checks[8086] =
--function(abilityInfo)
--    return not NerfedButtons.API.hasCondition(NerfedButtons.CONDITIONS.unst, NerfedButtons.API.ENEMY), 8086
--end