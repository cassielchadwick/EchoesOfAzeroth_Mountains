local _, ns = ...

-- ============================================================
-- Track catalog — every original TBC music file for the
-- Eversong Woods and Ghostlands zones, keyed by name,
-- valued by FileDataID (from the wowdev community listfile).
-- ============================================================

ns.Tracks = {

    -- Mountains > Walk --------------------------------
    DayMountain01              = 53577,
    DayMountain02              = 53578,
    DayMountain03              = 53579,
    NightMountain01            = 53580,
    NightMountain02            = 53581,
    NightMountain03            = 53582,
    NightMountain04            = 53583,

    -- Mountains > Gnomeragon ------------------
    gnomeragon01-zone          = 53189,
    gnomeragon02-zone          = 53190,

    -- Mountains > Tavern -----------------------------------
    RA_DwarfTavern1A           = 53739,
    RA_DwarfTavern1B           = 53740,
    RA_DwarfTavern2A           = 53741,
    RA_DwarfTavern2B           = 53742,
    RA_DwarfTavern3            = 53743,

    -- Mountains > Ironforge --------------------
    IronForge Intro            = 53469,
    IronForge Walking 01       = 53470,
    IronForge Walking 02       = 53471,
    Ironforge Walking 03 (Glenn) = 53472,
    Ironforge Walking 04       = 53195,
    tinkertownintro_moment     = 53196

}

-- ============================================================
-- Track durations (seconds) — extracted from the game audio
-- files via ffprobe.  Keyed by FileDataID so the engine can
-- schedule the next track when the current one finishes
-- instead of looping on a fixed timer.
-- ============================================================

ns.TrackDurations = {
    [53577] =   120.0,  -- DayMountain01
    [53578] =   66.0,  -- DayMountain02
    [53579] =   80.0,  -- DayMountain03
    [53580] =   64.0,  -- NightMountain01
    [53581] =   63.0,  -- NightMountain02
    [53582] =   69.0,  -- NightMountain03
    [53583] =   63.0,  -- NightMountain04
    [53189] =   64.0,  -- gnomeragon01-zone
    [53190] =   64.0,  -- gnomeragon02-zone
    [53739] =   79.0,  -- RA_DwarfTavern1A
    [53740] =   82.0,  -- RA_DwarfTavern1B
    [53741] =   86.0,  -- RA_DwarfTavern2A
    [53742] =   91.0,  -- RA_DwarfTavern2B
    [53743] =   102.0,  -- RA_DwarfTavern3
    [53469] =   86.0,  -- IronForge Intro
    [53470] =   123.0,  -- IronForge Walking 01 
    [53471] =   50.0,  -- IronForge Walking 02  
    [53472] =   81.0,  -- Ironforge Walking 03 (Glenn)
    [53195] =   70.0,  -- Ironforge Walking 04 
    [53196] =   51.0,  -- tinkertownintro_moment 
 
}
