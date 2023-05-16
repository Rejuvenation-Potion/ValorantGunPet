INCLUDE PinnedDownScene.ink
INCLUDE functions.ink
INCLUDE SecurityRoomScene.ink


->mission_dossier

VAR player_name = "Player"

===mission_dossier
[Alpha Earth: VALORANT Protocol Headquarters]

Today marks the end of your first month out of training working in the Mission Control department at HQ. As you're about to exit the building a young man wearing fatigues calls out to you, "Wait!" he yells. He's been running for quite some time, "The higher-ups! You've got an assignment!" He catches his breath as he nears you, "Here, it's all on there." He shoves a tablet into your hands. You have an assignment? But it's only your first week! "Well? Open it! It's an emergency!" Your sweaty fingers suddenly become a nuisance as you scramble to hold the device upright. The young man nosily leans over your shoulder, "What kind of mission do they give a newbie anyway?"
* [Shove him away.] You shove him off of you, "Hey this is classified! Probably..." He gives you a look of disappointment before slinking away. You refocus your attention, and excitement, to the device. -> dossier_signin
* [Look through the mission dossier.] His presence doesn't bother you. Besides, if you were in his shoes you'd be curious too! You refocus your attention, and excitement, to the device. -> dossier_signin
* [Dev ShortCut: Go to Pinned Down Scene] ->pinned_down

->dossier_signin

=dossier_signin

&nbsp;

[INPUT YOUR CALLSIGN TO RETRIEVE ASSIGNMENT]

* [Jester]
        ~player_name = "Jester"

* [Keg]
        ~player_name = "Keg"

* [Nightshade]
        ~player_name = "Nightshade"
    
- [FINGERPRINTS VERIFIED] Welcome to the mission, {player_name}. Connecting you now... -> dossier_info

=dossier_info

&nbsp;

SPECIAL REQUEST \/\/ Intelligence Operator, review the mission dossier:

-(view_info)
* [\[View mission brief\]]
    MISSION OBJECTIVE \/\/ AGENT EXTRACTION
    
   BRIEF \/\/ Agent No. 11's comms have gone dark during a solo recon mission at a Kingdom Industries (K-IND) facility near Buenos Aires on Omega Earth. Reestablish communications and extract the agent. [Kingdom Industries is Omega Earth's mirrorverse version of Kindgom Corporation. Alpha Earth has been under attack from Omega Agents from K-IND's VALORANT Legion.]

    SECONDARY OBJECTIVE \/\/ Find out K-IND's purpose at the facility. Any research or technology acquired could prove invaluable to our cause. 

    [MISSING AGENT]
    CALLSIGN \/\/ Reyna
    NAME \/\/ Zyanya Mondragón
    CLASSIFICATION \/\/ Radiant ->view_info
    
 
    
* [\[View mission team\]]
    [MISSION TEAM]
    - -(opts)
    * *[CALLSIGN \/\/ Viper] ->viper
    * *[CALLSIGN \/\/ Brimstone] ->brimstone
    * *[CALLSIGN \/\/ Killjoy] ->killjoy
    * *[CALLSIGN \/\/ {player_name}] ->you
    * *
    - - ->view_info 

* {CHOICE_COUNT () < 1} [Get to Mission Control to start the assignment.]
    ->outro
    
=viper
    CALLSIGN \/\/ Viper
    NAME \/\/ Sabine Callas
    CLASSIFICATION \/\/ Human
    Chem Specialist: Brilliant and bloodthristy, a former scientist and doctor for Kingdom Corporation (K-CORP). Prefers to slowly kill her enemies with poisons and toxins. [Word of advice: Do NOT get on her bad side.] ->dossier_info.opts // personality, methods, personalization
    
    
=brimstone
    CALLSIGN \/\/ Brimstone
    NAME \/\/ Liam Byrne
    CLASSIFICATION \/\/ Human
    Combat Specialist: VALORANT Protocol's reliable but stubborn commander. As a vetern of K-SEC, a subsidiary organization of Kingdom Corporation, he brings decades of combat experience to the field. [Just don't mention his age, he's very sensitive about that.]
 //bring up arsenal of weapons, strategy, battle tactics, leadership 
    ->dossier_info.opts
    
=killjoy
    CALLSIGN \/\/ Killjoy
    NAME \/\/ Klara Böhringer
    CLASSIFICATION \/\/ Human
    Tech Specialist: A genius inventor from Germany. Formerly lead K-CORP's Research and Development department before being recruited into VALORANT Protocol. She brings enthusiasm to the battlefield with playful, and sometimes reckless, confidence. // bring up hacking, tech
    ->dossier_info.opts
    
=you
    CALLSIGN \/\/ {player_name}
    NAME \/\/ [Redacted]
    CLASSIFICATION \/\/ Human
    Intelligence Specialist: The brightest new member of Mission Control. A prodigy in reconnaissance strategy and tactics, VALORANT Protocol watches {player_name} with anticipation.
    [DIRECT MESSAGE FROM "Brimstone": You're the team's eyes and ears. It's your job to guide us through the K-IND facility. Show us what you can do {player_name}!]
    ->dossier_info.opts
    
=outro
TODO: Amaya: transition to next section. getting into communication with the field team at mission control
// quick outline: go to mission control department. "tap into" field agents on mission. make contact with agents, they each have something to say. brimstone is happy to hear from you. the agents have just entered the site through a portable gateway. you look through their cameras and mics. the facility is shutdown, all power appears to be cut. it should be easy getting inside. the agents easily infiltrate the main building, there is no resistance or guards. their goal is to get to the security room where they can access information, and get their comms restablished with Reyna. The main room is lit up with emergency lights that are independently powered. giant crates are lined up at the back of the room near a large metal door that leads to the main security system. 
[You rush to the Mission Control department. The operator's desk is already primed and ready for you. With baited breath you carefuly place your headset, and connect to the field agents.]

->pinned_down
 