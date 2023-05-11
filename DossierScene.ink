INCLUDE PinnedDownScene.ink
->mission_dossier

VAR player_name = ""

===mission_dossier
[VALORANT Protocol Headquarters]

Today marks the end of your first week working in the Mission Control department at HQ. As you're about to exit the building a young man wearing fatigues calls out to you, "Wait!" he yells. He's been running for quite some time, "The higher-ups! You've got an assignment!" He catches his breath as he nears you, "Here, it's all on there." He shoves a dossier into your hands. Anxiety and elation flood your body. You have an assignment? But it's only your first week! "Well? Open it! It's an emergency!" Your sweaty fingers suddenly become a nuisance as you scramble to hold the device upright. The young man leans over your shoulder, trying to get a peek at what kind of mission a newbie would get.
* [Shove him away.] You shove him off of you, "Hey this is classified! Probably..." He gives you a look of disappointment before slinking away. You refocus your attention, and excitement, to the device. -> dossier_signin
* [Look through the dossier.] His presence doesn't bother you. Besides, if you were in his shoes you'd be curious too! You refocus your attention, and excitement, to the device. -> dossier_signin

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

URGENT REQUEST \/\/ Intelligence Operator, review the mission dossier:

-(view_info)
* [\[View mission brief\]]
    MISSION OBJECTIVE \/\/ AGENT EXTRACTION
    
   BRIEF \/\/ Agent No. 11's comms have gone dark during a solo recon mission at a Kingdom facility near Buenos Aires. Reestablish communications and extract the agent. 

SECONDARY OBJECTIVE \/\/ Find out Kingdom's purpose at the facility. Any research or technology acquired could prove invaluable to our cause. 

    [MISSING AGENT]
    CALLSIGN \/\/ Reyna
    NAME \/\/ Zyanya Mondragón
    CLASSIFICATION \/\/ Radiant
    
* [\[View mission team\]]
    [MISSION TEAM]

    Lab Specialist: Ruthless. Genius. Pragmatic? Sadistic? Deadly.
    CALLSIGN \/\/ Viper
    NAME \/\/ Sabine Callas
    CLASSIFICATION \/\/ Human
    
    Combat Specialist: Harsh. Stubborn. Direct. Determined. Regimented? something chain of command?
    CALLSIGN \/\/ Brimstone
    NAME \/\/ Liam Byrne
    CLASSIFICATION \/\/ Human

    Tech Specialist: Genius. Wildcard. Chaotic. Arrogant. Playful.
    CALLSIGN \/\/ Killjoy
    NAME \/\/ Klara Böhringer
    CLASSIFICATION \/\/ Human
    
    Intelligence Specialist: Prodigy. New. Genius. You're the team's eyes and ears. It's your job to guide the field agents through the Kingdom facility. Make it quick and clean Operator!

    CALLSIGN \/\/ {player_name}

    NAME \/\/ [Redacted]

    CLASSIFICATION \/\/ Human
   
   * {CHOICE_COUNT () < 1} [Get to Mission Control to start the assignment.]
    ->pinned_down

- ->view_info