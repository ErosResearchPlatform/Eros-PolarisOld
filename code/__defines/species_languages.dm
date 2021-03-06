// Species flags.
#define NO_MINOR_CUT      0x1    // Can step on broken glass with no ill-effects. Either thick skin (diona), cut resistant (slimes) or incorporeal (shadows)
#define IS_PLANT          0x2    // Is a treeperson.
#define NO_SCAN           0x4    // Cannot be scanned in a DNA machine/genome-stolen.
#define NO_PAIN           0x8    // Cannot suffer halloss/recieves deceptive health indicator.
#define NO_SLIP           0x10   // Cannot fall over.
#define NO_POISON         0x20   // Cannot not suffer toxloss.
// unused: 0x8000 - higher than this will overflow

// Species spawn flags
#define SPECIES_IS_WHITELISTED    0x1    // Must be whitelisted to play.
#define SPECIES_IS_RESTRICTED     0x2    // Is not a core/normally playable species. (castes, mutantraces)
#define SPECIES_CAN_JOIN                  0x4    // Species is selectable in chargen.

// Species appearance flags
//#define freeflag     0x1
#define HAS_SKIN_COLOR    0x2    // Skin colour selectable in chargen. (RGB)
#define HAS_LIPS          0x4    // Lips are drawn onto the mob icon. (lipstick)
#define HAS_UNDERWEAR     0x8    // Underwear is drawn onto the mob icon. //also defines if the subject uses or not the lewd interface.
#define HAS_EYE_COLOR     0x10   // Eye colour selectable in chargen. (RGB)
#define HAS_HAIR_COLOR    0x20   // Hair colour selectable in chargen. (RGB)
#define RADIATION_GLOWS   0x40   // Radiation causes this character to glow.
#define HAS_BIOMODS       0x80   // Radiation causes this character to glow. //defines if the user uses or not the biomods interface

// Languages.
#define LANGUAGE_SOL_COMMON "Sol Common"
#define LANGUAGE_UNATHI "Sinta'unathi"
#define LANGUAGE_SIIK "Siik"
#define LANGUAGE_SKRELLIAN "Skrellian"
#define LANGUAGE_ROOTSPEAK "Rootspeak"
#define LANGUAGE_TRADEBAND "Tradeband"
#define LANGUAGE_GUTTER "Gutter"
#define LANGUAGE_SCHECHI "Schechi"
#define LANGUAGE_CULT "Cult"

// Language flags.
#define WHITELISTED  1   // Language is available if the speaker is whitelisted.
#define RESTRICTED   2   // Language can only be acquired by spawning or an admin.
#define NONVERBAL    4   // Language has a significant non-verbal component. Speech is garbled without line-of-sight.
#define SIGNLANG     8   // Language is completely non-verbal. Speech is displayed through emotes for those who can understand.
#define HIVEMIND     16  // Broadcast to all mobs with this language.
#define NONGLOBAL    32  // Do not add to general languages list.
#define INNATE       64  // All mobs can be assumed to speak and understand this language. (audible emotes)
#define NO_TALK_MSG  128 // Do not show the "\The [speaker] talks into \the [radio]" message
#define NO_STUTTER   256 // No stuttering, slurring, or other speech problems
