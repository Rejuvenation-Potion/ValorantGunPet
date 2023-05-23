INCLUDE PinnedDownScene.ink
INCLUDE functions.ink
INCLUDE SecurityRoomScene.ink


->mission_dossier

VAR player_name = "Player"

===mission_dossier
[LOCATION: Alpha Earth - VALORANT Protocol Headquarters]

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
    Combat Specialist: VALORANT Protocol's reliable but stubborn commander. As a vetern of K-SEC, a subsidiary organization of Kingdom Corporation, he brings decades of combat experience to the field. Try not to mention his age, he's very sensitive about that.
 //bring up arsenal of weapons, strategy, battle tactics, leadership 
    ->dossier_info.opts
    
=killjoy
    CALLSIGN \/\/ Killjoy
    NAME \/\/ Klara Böhringer
    CLASSIFICATION \/\/ Human
    Tech Specialist: A genius inventor from Germany. Formerly lead Kingdom Corporation's Research and Development department before being recruited into VALORANT Protocol. She brings enthusiasm to the battlefield with playful, and sometimes reckless, confidence. // bring up hacking, tech
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
You rush to the Mission Control department. Waiting impatiently is your department lead, "I don't know why they put a rookie on this but there's no time to lose. Come with me." He guides you to an Active Mission Operator desk. It buzzes with energy as you sit down. Your lead hands you a special helmet connected to the department's supercomputer, "Put this on and say 'Establish Pathway Link'." You carefully put on the helmet and everything goes dark. The bustling noises of work are silenced and all light vanishes.
* "Establish Pathway Link"
- [ACTIVATING NEURAL LINK - PATHWAY ALGORITHM ONLINE] 
You gasp for air as all the color in the world lights up before you, swirling and zipping past. You begin to feel nauseous just as the colors start to settle. You push away the feeling and focus on the images before you. Three perspectives seen at once. And then the sound comes. Metal and wind, the road, the sounds of people breathing. A digital overlay appears before you, labeling the perspectives and analyzing the environment.
    [Viper] [Brimstone] [Killjoy]
    [LOCATION: Omega Earth - VALORANT Protocol's Portable Pathway Vehicle]
"It seems we're no longer alone," Viper says. Brimstone, a rugged older man, looks up to a pale woman with short black hair, then to a blinking light on his bracer, "Ah! That would be our IO. How ya doing kid?" He grins and waits for you to answer.
* "Intelligence Operator {player_name} requesting status report[."]," you say dutifully. Brimstone shakes his head, "Straight to business, alright. We've already made the jump to Omega and the facility should be close by. Our sources say that this place was recently abandoned. Expect it to be lightly guarded. All we gotta do is get in, get out, and boom! Mission accomplished." 
Killjoy, a young woman in colorful clothing and a green beenie, chuckles, "Fingers crossed, we'll be back at base before you can say 'popcorn'! What? I'm hungry."
* (viperdontgetuskilled) "Doing great, thank you sir! I'm ready for the mission, sir!"[] You say eagerly. Viper groans, "New bloods, impatient...predictable. Try not to get us killed will you?" Killjoy, a young woman in colorful clothing and a green beenie, responds, "Maybe don't insult the person who's in charge of our lives ja? Just a thought." 
* "Oh just amazing. My conscious was shot through a dimension-portal link for the first time and I managed NOT to throw up!" [] You say in a sarcastic but playful tone. Killjoy, a young woman in colorful clothing and a green beenie, chuckles at your joke, "I like this one, they've got 'spunk' as you Americans say." Viper groans, which only further amuses Killjoy.
- Suddenly the vehicle comes to a screeching stop. "That's our cue!" Brimstone exclaims and bursts out from the back of the vehicle. Killjoy and Viper quickly follow his lead. They make their way to the perimeter of the facility. There are no guards stationed, and a quick scan tells you that the power to the facility has been shut off for quite some time. That's a relief, there shouldn't be any internal defense systems online. 
* [Signal for the team to enter the facility.]
You tell the team to move ahead and they infilrate the main building with ease. Dimly lit red emergency lights guide their path until they reach an enormous central chamber. At its end is a large metal door with a barely legible sign that reads [CENTRAL SECURITY].
"Ah! Over there!" Killjoy points to the sign, "If I can get in there we can access their surveillence system. We'll find Reyna in no time."
Brimstone raises his hand for the team to stop, "Hold on, I know I said this would be easy but-"
"Something isn't right..." Viper finishes, her eyes dart around the room for threats.
Killjoy continues forward, "Come on! I haven't invented a time machine, yet."
"Killjoy wait!" Viper yells as Killjoy takes one step too far towards the door.

->pinned_down
 