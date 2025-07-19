class Templates 
{
    /*
        A "Class" literally just stores things. It by itself does not do anything.

        In the case of Antistasi, most of the scripts will grab all classes from the corresponding configs.

        Say we have a function that grabs all factions and displays their name. These classes exist as storage and key-value pairs basically.
    */

    class Vanilla_Base;
    /*
        Vanilla_Base is a class in the main Antistasi Ultimate mod. It contains values for factions and such.
        https://github.com/SilenceIsFatto/A3-Antistasi-Ultimate/blob/stable/A3A/addons/core/Templates/Templates.hpp#L61-L69

        Class inheritance is a very useful thing and allows you to not have to re-define values in every class. Read more here:
        https://community.bistudio.com/wiki/Class_Inheritance
    */

    /*
        Vanilla_AAF is a class in the main Antistasi Ultimate mod.
        https://github.com/SilenceIsFatto/A3-Antistasi-Ultimate/blob/stable/A3A/addons/core/Templates/Templates.hpp#L123-L132

        By redefining it here, we are essentially replacing the values of this class. 
        Because of inheritance and how classes work, it will only change the values that we change here. 
        If we simply wanted to rename the AAF to AAF 2, we would change the name value. Everything else would be left untouched.

        In this case we are changing the basepath value (so it can find our new template);
        The name (so we know it's different);
        And the file (so it will use our custom template instead of the normal one.)
        Everything else will be inherited from the class (link above)
    */
    class Vanilla_AAF
    { 
        basepath = QPATHTOFOLDER(Templates\Vanilla);
        name = "A3 AAF (OVERWRITTEN)"; // Name shown in the select menu. If this is removed, it will use the name of the template you are overwriting. Remove this for "silent" changes
        file = "Vanilla_AI_AAF";
    };

    /*
        Here we are creating a completely new class that inherits from Vanilla_Base (Link in the top comment above)

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting an existing one.

        You do not need all of these values. If they are in the Vanilla_Base class, they will be inherited. Only define a value if you need to change it.
    */
    class Vanilla_AAF_New : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\Vanilla); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\Vanilla\flag_aaf_torn_co.paa); // Path to an icon to be displayed in the select menu.
        name = "A3 AAF (NEW)"; // Name shown in the select menu.
        file = "Vanilla_AI_AAF_New"; // The template file name - .sqf, that gets appended automatically.
        maps[] = {}; // If this template should be prioritized on any maps (case sensitive to worldName)
        climate[] = {"arid", "temperate"}; // climate that the template can be selected on.
        description = "This is a new template, called the A3 AAF (NEW)!"; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class RESE_REBS_BSAA : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\RESE); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\RESE\bsaa_flag_co.paa); // Path to an icon to be displayed in the select menu.
        name = "BSAA"; // Name shown in the select menu.
        file = "RESE_Rebs_BSAA"; // The template file name - .sqf, that gets appended automatically.
        description = "(Easiest) A global paramilitary task force formed to combat the rising threat of bioterrorism and bio-organic weapons (B.O.W.s). Operating under international oversight, the BSAA deploys elite agents to hotspots around the world, tasked with identifying, neutralizing, and containing biohazard outbreaks before they escalate. Equipped with advanced technology and backed by global intelligence, the BSAA stands as humanity’s first line of defense against bioengineered horrors."; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class RESE_REBS_BUMB : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\RESE); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\RESE\bumb_flag_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Blue Umbrella"; // Name shown in the select menu.
        file = "RESE_Rebs_BUMB"; // The template file name - .sqf, that gets appended automatically.
        description = "(Easy) An early paramilitary partner to the BSAA, Blue Umbrella is made up of ex-Umbrella scientists and operatives working to contain the very threats they once helped create. Backed by corporate funding and operating under close UN oversight, they blend advanced bioweapon tech with field-tested tactics. Their past is checkered—but their mission is clear."; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class RESE_REBS_SURV : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\RESE); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Reb"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\RESE\surv_flag_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Survivors"; // Name shown in the select menu.
        file = "RESE_Rebs_SURV"; // The template file name - .sqf, that gets appended automatically.
        description = "(Hard, Recommended Start) Good hearted refugee escapades from various quarantine zones, such as Racoon City, realizing that the true strength is to band together with sharing what supplies they have; frequently working with the BSAA or Blue Umbrella to achieve their common goals for humanity."; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class RESE_RIV_BSURV : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\RESE); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\RESE\bsurv_flag_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Bandit Survivors"; // Name shown in the select menu.
        file = "RESE_Riv_BSURV"; // The template file name - .sqf, that gets appended automatically.
        description = "Once ordinary civilians, now ruthless scavengers shaped by outbreak after outbreak. The Bandit Survivors reject government aid and corporate promises, choosing instead to take what they need by force. Armed with salvaged gear and no regard for law or life, they thrive in chaos—feeding off the collapse of civilization."; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class RESE_RIV_UMBSC : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\RESE); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Riv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\RESE\umbsc_flag_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Umbrella Sleeper Cell"; // Name shown in the select menu.
        file = "RESE_Riv_UMBSC"; // The template file name - .sqf, that gets appended automatically.
        description = "An extremist rogue covert agency from within the higher intelligence echelons of Umbrella Corporation, operating on it's own seperate from High Command, tasked with infiltrating enemy alliances in order to destroy them; willing to turn on their own paramilitary and employees that get in the way, if it means achieving their aims."; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class RESE_OCC_UCORPS : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\RESE); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Occ"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\RESE\uc_flag_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Umbrella Corporation"; // Name shown in the select menu.
        file = "RESE_AI_UCORPS"; // The template file name - .sqf, that gets appended automatically.
        description = "A ruthless private military force operating under the shadow of the Umbrella Corporation. Specializing in biohazard containment, black ops, and corporate warfare, the Umbrella Corps are elite soldiers enhanced with cutting-edge tech and zero moral restraint. Their true mission: protect Umbrella’s secrets—at any cost."; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    class RESE_INV_UCORPS : Vanilla_Base
    {
        basepath = QPATHTOFOLDER(Templates\RESE); //the path to the folder the template is located in, this translates to "\x\A3AE\addons\templates\Templates\Vanilla"
        side = "Inv"; // Inv, Occ, Reb, Riv, Civ
        flagTexture = QPATHTOFOLDER(Templates\RESE\uc_flag_co.paa); // Path to an icon to be displayed in the select menu.
        name = "Umbrella Corporation"; // Name shown in the select menu.
        file = "RESE_AI_UCORPS"; // The template file name - .sqf, that gets appended automatically.
        description = "A ruthless private military force operating under the shadow of the Umbrella Corporation. Specializing in biohazard containment, black ops, and corporate warfare, the Umbrella Corps are elite soldiers enhanced with cutting-edge tech and zero moral restraint. Their true mission: protect Umbrella’s secrets—at any cost."; // If this isn't included, no description will show (unless inherited from the base class.)
    };

    /*
        Here we are creating a completely new class that inherits from Vanilla_AAF_New.

        Since it has a unique classname, this will show up as a new faction in the faction selector rather than overwriting Vanilla_AAF_New.

        You will see that the only values changed are name and description. These are the only differences. This faction will have the exact same equipment, flag, etc as Vanilla_AAF_New.
    */
    class Vanilla_AAF_New_InheritanceExample : Vanilla_AAF_New
    {
        name = "A3 AAF (NEW INHERITED)";
        description = "This is a new template, called the A3 AAF (NEW INHERITED)!";
    };
};

/*
    Climates: {"arid", "arctic", "temperate", "tropical"}
*/