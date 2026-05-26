local _, ns = ...
local T = ns.Tracks
local api = _G.EchoesOfAzeroth
local Dsl = api and api.PluginDsl
if not Dsl then
    error("EchoesOfAzeroth core must load before EchoesOfAzeroth_QuelThalas")
end

local Pack = Dsl.pack
local MixedPack = Dsl.mixedPack

-- ============================================================
-- Music Packs — predefined track collections users can assign
-- to any zone or subzone via the settings panel.
--
-- Each pack mirrors the zone-config schema:
--   label  = display name for the UI
--   day    = { FileDataID, ... }   (06:00–20:59)
--   night  = { FileDataID, ... }   (21:00–05:59)
--   any    = { FileDataID, ... }   (merged into active pool)
--   intro  = FileDataID            (optional, plays once)
--
-- Three packs per main zone: (TBC), (Midnight), (TBC + Midnight).
-- Subzone utility packs are listed after.
-- ============================================================

local MOUNTAIN = Pack {
    label = "Mountains (Vanilla)",
    day = {
        T.DayMountain01,
        T.DayMountain02,
        T.DayMountain03,
    },
    night = {
        T.NightMountain01,
        T.NightMountain02,
        T.NightMountain03,
        T.NightMountain04,
    },
}

local GNOMEREGAN = Pack {
    label = "Gnomeregan (Vanilla)",
    any = {
        T.gnomeragon01-zone,
        T.gnomeragon02-zone,
    },
}

local DWARFTAVERN = Pack {
    label = "Dwarf Taverns (TBC)",
    any = {
        T.RA_DwarfTavern1A,
        T.RA_DwarfTavern1B,
        T.RA_DwarfTavern2A,
        T.RA_DwarfTavern2B,
        T.RA_DwarfTavern3,
    },
}

local IRONFORGE = Pack {
    label = "Ironforge (Vanilla)",
    intro = {
        T.IronForge Intro,
    },
    any = {
        T.IronForge Walking 01,
        T.IronForge Walking 02,
        T.Ironforge Walking 03 (Glenn),
        T.Ironforge Walking 04,
    },
}

local TINKERTOWN = Pack {
    label = "Tinker Town (Vanilla)",
    intro = {
        T.tinkertownintro_moment,
    }, 
    any = {
        T.gnomeragon01-zone,
        T.gnomeragon02-zone,
    },
}

ns.MusicPacks = {
    MOUNTAIN = MOUNTAIN,
    GNOMEREGAN = GNOMEREGAN,
    DWARFTAVERN = DWARFTAVERN,
    IRONFORGE = IRONFORGE,
    TINKERTOWN = TINKERTOWN,
}
