local _, ns = ...

-- ============================================================
-- Localization
--
-- English (enUS) is the base. Other locales override below.
-- Keys are locale-independent constants used in Zones.lua.
--
-- Two tables:
--   names    → display names shown in chat (zone labels)
--   subzones → subzone names matching GetSubZoneText() output
--
-- The engine builds a reverse lookup (localized text → key) so
-- Zones.lua can use stable keys regardless of client language.
--
-- Only subzones actually referenced in Zones.lua need entries.
-- Discover new ones in-game with /eoqt now, then add here.
-- ============================================================

local names = {
    SILVERMOON_CITY   = "Silvermoon City",
    EVERSONG_WOODS    = "Eversong Woods",
    GHOSTLANDS        = "Ghostlands",
    ISLE_OF_QUELDANAS = "Isle of Quel'Danas",
    MAGISTERS_TERRACE = "Magisters' Terrace",
    MARCH_ON_QUELDANAS = "March on Quel'Danas",
}

local subzones = {
    MURDER_ROW           = "Murder Row",
    WINDRUNNER_VILLAGE   = "Windrunner Village",
    WINDRUNNER_SPIRE     = "Windrunner Spire",
    RUINS_OF_DEATHOLME   = "Ruins of Deatholme",
    AMANI_PASS           = "Amani Pass",
    LIGHTBLOOM_ATHRAN    = "Lightbloom Ath'Ran",
    SUNCROWN_VILLAGE     = "Suncrown Village",
    SUNCROWN_TREE        = "Suncrown Tree",
    SILVERGLADE_REFUGE   = "Silverglade Refuge",
    -- Ghostlands (map 95) subzones
    SUNGRAZE_PEAK        = "Sungraze Peak",
    HATCHET_HILLS        = "Hatchet Hills",
}

-- ============================================================
-- Expose to namespace
-- ============================================================

ns.L = setmetatable(names, {
    __index = function(_, key) return key end,
})

ns.SubzoneNames = subzones

ns.SubzoneKeys = {}
for key, localizedName in pairs(subzones) do
    ns.SubzoneKeys[localizedName] = key
end
