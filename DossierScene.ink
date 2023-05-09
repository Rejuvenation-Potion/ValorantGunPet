->mission_dossier

VAR player_name = ""

===mission_dossier
MISSION OBJECTIVE \/\/ AGENT EXTRACTION
->dossier_sections

=dossier_sections
* [View mission brief]
    BRIEF \/\/ Agent No. 11's comms have gone dark during a recon mission at a Kingdom facility near Buenos Aires.
    You're the team's eyes and ears. It's your job to guide the field agents through the Kingdom facility. 
    
* [View target]
    Missing Recon Agent:

    CALLSIGN \/\/ Reyna

    NAME \/\/ Zyanya Mondragón

    CLASSIFICATION \/\/ Radiant
    
* [View mission team]
    Mission Team:
    CALLSIGN \/\/ Viper

    NAME \/\/ Sabine Callas

    CLASSIFICATION \/\/ Human
    
    CALLSIGN \/\/ Brimstone

    NAME \/\/ Liam Byrne

    CLASSIFICATION \/\/ Human

    CALLSIGN \/\/ Killjoy

    NAME \/\/ Klara Böhringer

    CLASSIFICATION \/\/ Human
    
* {CHOICE_COUNT() < 1} [Enter Callsign to confirm mission]
    Intelligence Operator:

    CALLSIGN \/\/ \< User Input Required >

    NAME \/\/ [Redacted]

    CLASSIFICATION \/\/ Human
    

    * * (KJ) Name 1: Jester
        ~player_name = "Jester"

    * * (Brim) Name 2: Keg
        ~player_name = "Keg"

    * * (Viper) Name 3: Nightshade
        ~player_name = "Nightshade"
    
    - - Welcome to the mission, {player_name}. Connecting you to team.

- ->dossier_sections