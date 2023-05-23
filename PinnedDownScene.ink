===pinned_down

VAR mechs_alive = true
VAR door_locked = true

VAR brim_injured = false
VAR viper_injured = false
VAR kj_injured = false

->ambush

=ambush
TODO: Add player input around here: player needs to adjust whole team's comm filters for noise and vision
Suddenly, your comms are overwhelmed by the sound of a blaring alarm. Your viewscreens light up red as warning lights illuminate the facility around your agents. 
//Input goes here-ish
Your comm system adjusts to filter out the alarm just in time for you to hear Brimstone yell "Get down!" 
All three of your agents dive for cover just as bright muzzle flashes and the sound of gunshots fill the room. Through their shared perspectives, you see several of the heavy crates in the room slide open to reveal bipedal mechs. Heavily-armed Kingdom Industries mechs. It's clear your agents are under fire, but you'll need a more detailed report to make sense of the chaos.

* "Status report[."]," you say.
    "We're fine by the way, danke," Killjoy replies sarcastically.
    "Cut the chatter," Brimstone interjects. "{player_name}, I'll get you up to speed."

* "Who tripped the alarm?"[] you ask pointedly. Your first mission, and already something has gone wrong. You need to know how it happened.
    "Well it certainly wasn't me," Viper says, staring daggers at Killjoy.
    "Are you accusing me of something, Sabine?" Killjoy replies.
    "We can worry about blame later," Brimstone cuts in. "{player_name}, I'll get you up to speed."

* "Is everyone ok?"[] you ask quickly, trying not to think about would mean to lose one of your agents on your very first assignment.
    "Well we're not dead yet," Killjoy says, "But that trejectory may change veeery soon."
    {mission_dossier.outro.viperdontgetuskilled: "What did I say about not getting us killed {player_name}?" Viper hisses through the comm.} 
    "Take a breath, kid," Brimstone says calmly. "I'll tell you what's going on."

//NOTE: I put this "choice" at this gather just to break up how many lines of text the player gets at once
- 
* "Go ahead, Brimstone[."]," you say.
->room_description    

    
=room_description
VAR asked_brim = false
VAR asked_viper = false
VAR asked_kj = false
"We're pinned down by Kingdom Industries mechs," Brimstone continues. "About a dozen. They were hidden in the crates throughout the warehouse. We've taken cover for now, but we'll need a plan to deal with them sooner than later."
"We HAVE to get into that security room. It's our only chance of finding Reyna in this huge facility." Killjoy adds. //redo
"That door is shut and if you haven't looked recently, there's no convient handle. We have more pressing issues to deal with right now, like this army of mechs" Viper says. //redo
"Ja," Killjoy replies. "That's what makes it fun."
"We're not here for 'fun,'" Viper counters. "I recommend a different approach." 
"If {player_name} wants your recommendation, Sabine, they'll ask for it," Brimstone says. "Each of us might have a way past these mechs, but this is {player_name}'s mission to lead."
->agent_plans

=agent_plans
{Like Brimstone said, each of your agents could deal with this in a different way. It's up to you who to ask.|You could ask for other options, or go ahead with the proposed plan.|There's still one agent you could ask for a plan, or you could give the order now.|You know all your options. Now it's up to you to make the call.} 

//Three "Ask for plan" options

* "Brimstone, what would you do?"[] you ask.
    ~asked_brim = true
    "We'll have to deal with these mechs sooner or later, and our objective is directly through them." Brimstone pops out from behind cover to survey the battlefield, then ducks down again. "There's not a lot of cover out there, but this is what we train for. I say we fight through them."
        
* "Viper, what's your recommendation?"[] you ask.
    ~asked_viper = true
    "We're smarter than these mechs, and destorying them isn't our objective anyway. I say we go around."
    "Go around where?" Brimstone asks.
    "There's a service tunnel entrance on the left wall" Viper says. You see the dark passageway she indicates through her section of your split perspective. "We can reach it without leaving cover and lose the mechs in the tunnels. We may even find an alternate path to our objective, bypassing the locked door entirely."
    TODO: allude to something hiding in tunnel? Maybe Killjoy just gets a bad vibe/disapproves "ah yes, let's go in the creepy dark tunnel"
    TODO: Maybe change from "service tunnel" to actual dirt tunnel, dug by an animal
        
* "Killjoy, what do you think?"[] you ask.
    ~asked_kj = true
    "I think you should let me do what I do best," Killjoy replies. "The fact that all of these mechs activated at once tells me that they are being controlled by the same remote signal. There's a transmitter on the right side of the room, and if I can hack it, I can take control of that signal and deactivate the mechs."
    "How long will that take?" Brimstone asks.
    "Hard to say, but not more than a few minutes. I am a genius after all." Killjoy says. //redo [NOTE: KJ is confident that the mechs will be permanently disabled, but then will they come back online later. If not, then they could just shoot them when they're disabled and we would have a plot hole.]

//Three "Use this plan" options. Within same list of choices, each unlocked by using associated "ask for plan" option.

* {asked_brim} "Brimstone, fight through the mechs[."]," you order.
    //First make all code changes
    //defeat mechs
    ~mechs_alive = false
    //someone injured
    ~temp injured_agent = RandomInjury()
    
    //Then describe outcome
    "Acknowledged," Brimstone replies. "Alright team, on my mark. Engage!"
    TODO: Please replace/expand these combat details to better represent their actual game abilities
    Your field of vision explodes into motion as all three agents leap out of cover to combat the mechs. You watch as Brimstone guns down a trio of mechs, Viper corrodes a group behind them with her chemical attacks, and Killjoy places a turret on top of a crate to rain fire down from above. Just before the last mech falls, however, you hear a cry of pain as {injured_agent} takes a bullet to the left arm.
    {
        -injured_agent == "Brimstone": 
            Viper looks over in concern, but Brimstone waves her away. "It's nothing," he says. "I've had worse. Killjoy," he continues, "get that door open."
        -injured_agent == "Viper":
            Brimstone looks over in concern, and Viper glares back. "This could have been avoided," she says, "Stop staring at me. I'm FINE. Get that door open!" //redo
        -injured_agent == "Killjoy":
            "Ach, this is what we get for going with the simpleton's solution!" Killjoy exclaims angrily. She clutches at her arm. "This will make hacking that door much more difficult. Fortunately for you, I like a challenge."
        TODO: remove debug line before publishing
        -else: DEBUG WARNING: Incorrect Name Returned for "injured_agent" 
    }
    ->locked_door
    
* {asked_viper} "Viper, lead the team around[."]," you order.
    TODO: Add hints at gun pets; "you feel like you are being watched," etc.
    "Good choice." Viper replies. "Brimstone, Killjoy; with me." //redo
    Viper leads the team stealthily and silently from crate to crate, never breaking cover. Before long, the team is behind one last crate about eight feet from the service tunnel.
    "We'll have to make a break for it from here," Viper explains quietly. //redo 
    "When I say run, run, got it? If any of the pursue we'll lose them in the tunnels. Ready?" 
    Brimstone and Killjoy nod.
    "Run."
    The three agents dash into the dark passageway. The two nearest mechs give chase, but Viper leads the team through a series of tight turns in the darkness, and the mechs soon lose their trail.
    "We may have lost the mechs," Killjoy says, "but I think we're lost too. I'm completely turned around."
    "Lucky for you I know what I'm doing. We should be close to the security room we were trying to reach. In fact... there." Viper points at a cracked concrete wall
    A few well-placed explosives prove she was right, and the team emerges from the rubble into the security room unharmed. // You can faintly hear the mechs patrolling on the other side of the door, but they seem completely unaware of the team's location.
    // "We'll still have to deal with them eventually," Brimstone says. "But in the meantime we've made significant progress toward the objective. Good work."
    ->security_room 
    
* {asked_kj} "Killjoy, hack the mechs[."]," you order.
    "Wunderbar!" Killjoy exclaims. "Now, you two, give me some cover." 
    With that, Killjoy leaps to her feet and dashes for the transmitter on the right side of the room. A trio of mechs immediately take notice and aim in her direction, but Viper distracts them with a well placed toxic screen. Brimstone gets the attention of a few more with an incendiary grenade, and then continues to fire at the mechs from behind cover.
    Now that she has plenty of room to maneuver, Killjoy strides confidently up to the transmitter and opens up a panel to reveal its inner circuitry. After only a few quick adjustments, the sound of gunfire echoing through the chamber abruptly stops. Viper and Brimstone peak out of cover to see that the mechs have frozen completely in place. A few of them drop their weapons completely. 
    Killjoy walks casually through the field of frozen mechs, tapping one on the head to gague its reaction.
    "Killjoy, you're a genius," Brimstone says appreciatively.
    Killjoy smiles. "Child's play, really." 
    "Focus," Viper says to them both. "We still have to get through the door." Viper crosses the room toward the security door, Brimstone and Killjoy following behind.
    ->locked_door

- ->agent_plans

===locked_door
TODO: Amaya
TODO: Do we want this to be a scene with a choice? Or just a short wrap-up for the Brim and KJ routes?
// 1. Brimstone route, KJ healthy, easy unlocking
// 2. Brimsonte route, Killjoy injured, still get through but difficult?
// 3. Killjoy route--mechs come back online just as they get through door
________(Quick scene about unlocking door not yet written)__________

->security_room