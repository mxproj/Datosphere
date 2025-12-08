namespace Datosphere.Domain.OptionTypes.Member.Body;


public enum PiercingJewelryType
{
    // General / fallback
    Other                     = 0,    // anything else

    // Common jewelry
    RingHoop                   = 1,    // classic round hoop
    CaptiveBeadRing            = 2,    // hoop with a single bead
    SeamlessRing               = 3,    // ring without visible closure
    Labret                      = 4,    // flat-back post for lip/nose/tragus
    StraightBarbell             = 5,    // straight rod with threaded balls/ends
    CurvedBarbell               = 6,    // banana / curved barbell
    CircularBarbell             = 7,    // U-shaped horseshoe barbell
    NoseStud                    = 8,    // small post for nose
    NoseScrew                   = 9,    // twisted post for nose
    TongueStud                  = 10,   // barbell for tongue

    // Less common / artistic / subculture
    Clicker                     = 11,   // hinged ring, often septum or cartilage
    DangleHoop                  = 12,   // hoop with charms / chandelier style
    SpiralBarbell               = 13,   // twisted or wave barbell for aesthetic effect
    SurfaceBar                  = 14,   // for flat skin areas, minimal exit
    DermalAnchor                = 15,   // microdermal anchor with top jewel
    Plug                        = 16,   // solid plug for stretched ear
    Tunnel                      = 17,   // hollow plug for stretched ear
    Taper                       = 18,   // stretching taper for gauges
    OrganicMaterial             = 19,   // wood, stone, horn, silicone, etc.
    Retainer                    = 20,   // flexible/hidden jewelry for healing or hiding

    // Specialist / genital / rare
    Frenum                       = 21,   // male frenum piercing barbell
    PrinceWand                   = 22,   // hollow rod inserted in urethra
    ShaftBarbell                  = 23,   // barbell along penis shaft
    GlansRing                     = 24,   // ring on tip of penis
    LabiaHoodLace                 = 25,   // decorative lace along labia
    LabiaRingSet                  = 26,   // multiple rings along labia length
    ClitoralHood                  = 27,   // hood piercing jewelry
    ClitorisStud                  = 28,   // direct clitoris piercing
    AnusPetals                     = 29,   // decorative ring arrangement around anus
    ScrotumBarbell                 = 30    // barbell through scrotum
}
