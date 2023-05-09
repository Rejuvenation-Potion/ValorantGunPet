INCLUDE PinnedDownScene.ink
->mission_dossier

VAR player_name = ""

===mission_dossier
[VALORANT Protocol Head-quarters]
URGENT REQUEST \/\/ Intelligence Operator, review the mission dossier:

->dossier_sections

=dossier_sections
* [\[View mission brief\]]
    MISSION OBJECTIVE \/\/ AGENT EXTRACTION
    
    BRIEF \/\/ Agent No. 11's comms have gone dark during a recon mission at a Kingdom facility near Buenos Aires.

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
    
    
* {CHOICE_COUNT() < 1} [\[Enter Callsign to confirm mission\]]
    You're the team's eyes and ears. It's your job to guide the field agents through the Kingdom facility. Make it quick and clean Operator!
    Intelligence Operator:

    CALLSIGN \/\/ \< User Input Required >

    NAME \/\/ [Redacted]

    CLASSIFICATION \/\/ Human
    

    * * [Jester]
        ~player_name = "Jester"

    * * [Keg]
        ~player_name = "Keg"

    * * [Nightshade]
        ~player_name = "Nightshade"
    
    - - Welcome to the mission, {player_name}. Connecting you to the team.
    ->pinned_down

- ->dossier_sections