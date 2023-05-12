INCLUDE PinnedDownScene.ink
INCLUDE functions.ink
INCLUDE SecurityRoomScene.ink


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

SPECIAL REQUEST \/\/ Intelligence Operator, review the mission dossier:

-(view_info)
* [\[View mission brief\]]
    MISSION OBJECTIVE \/\/ AGENT EXTRACTION
    
   BRIEF \/\/ Agent No. 11's comms have gone dark during a solo recon mission at a Kingdom facility near Buenos Aires. Reestablish communications and extract the agent. 

    SECONDARY OBJECTIVE \/\/ Find out Kingdom's purpose at the facility. Any research or technology acquired could prove invaluable to our cause. 

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
    ->pinned_down
    
=viper
    CALLSIGN \/\/ Viper
    NAME \/\/ Sabine Callas
    CLASSIFICATION \/\/ Human
    Chem Specialist: Brilliant and bloodthristy, a former scientist and doctor for the Kingdom Corporation. Prefers to slowly kill her enemies with poisons and toxins. Word of advice: Don't ask her about "it". ->dossier_info.opts
    
    
=brimstone
    CALLSIGN \/\/ Brimstone
    NAME \/\/ Liam Byrne
    CLASSIFICATION \/\/ Human
    Combat Specialist: K/SEC veteran, now Commander of VALORANT. Dedicated, reliable, and stubborn. Boasting decades of experience, [and always willing to work in the field.] ->dossier_info.opts
    
=killjoy
    CALLSIGN \/\/ Killjoy
    NAME \/\/ Klara Böhringer
    CLASSIFICATION \/\/ Human
    Tech Specialist: A genius inventor from Germany. With confidence or arrogance, she brings enthusiasm to the battlefield with her chaotic and playful [antics.] ->dossier_info.opts
    
=you
    CALLSIGN \/\/ {player_name}
    NAME \/\/ [Redacted]
    CLASSIFICATION \/\/ Human
    Intelligence Specialist: The newest member of Mission Control. A prodigy in reconnaissance strategy and tactics. [You're the team's eyes and ears. It's your job to guide the field agents through the Kingdom facility. Make it quick and clean!] ->dossier_info.opts
 