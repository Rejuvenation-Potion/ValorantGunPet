===pinned_down

VAR mechs_alive = true
VAR door_locked = true

VAR brim_injured = false
VAR viper_injured = false
VAR kj_injured = false


It appears the agents made it into the facility but are now pinned down by Kingdom robots.
One of the agents' voices comes through on the comm. "{player_name}, is that you?"


TODO: Choose which agent to ask for report? Manner of asking? i.e. "are you all alright?" vs. "cut to the chase." For now just "Status report"

* "Status report[."]," you say.
    /*
    Each agent speaks at least once while giving important exposistion
        1. We're pinned down by Kingdom Mechs
        2. We're trying to reach the big metal door on the far side of the room
        3. It's locked
    */
    TODO: Real text for all this exposition
    (One of the agents says "we're pinned down by Kingdom mechs")
    (another of the agents fills the player in on how they got into the facility)
    (The third agent lays out the immediate objective, get through the large metal door at the end of the room)
    (Second agent points out that the door is locked).
    (First agent reiterates that they are currently under fire.)

- You've gotten up to speed. Now it's time to figure out what to do.
TODO: For more choice, maybe have the player ask agents one at a time for their recommendation. Potentially even allow them to choose their option before asking the others. For now just "What are our options?"

* "What are our options?"[] you ask.
    TODO: Real text for the options
    (Brimstone recommends just fighting through the mechs. He points out that the team will have to take them out sooner or later, might as well be now.)
    (Viper disagrees and points out the dark passageway to the left which the team could use to evade the mechs and the door.)
    (Killjoy tells them to think bigger, and points out some machine(?) on the right that will allow her to hack the mechs.)


- It's up to you to make the call.

* "Brimstone, fight through the mechs[."]," you order.
    //defeat mechs
    ~mechs_alive = false
    //someone injured
    ~temp injured_agent = RandomInjury()
    The team fights through the mechs, but {injured_agent} is injured!
    //Door is still blocking them [Go to Locked Security Door] → [Security Room]
    The door is still locked.
    ->locked_door
    
* "Viper, lead the team around[."]," you order.
    //Make it around the locked door (find weak point side panel entrance) → [Security Room]
    //Mechs still alive, hunting them (mechs come back later in the story if they are not dealt with)
    Viper leads the team around and finds a way past the locked door.
    The mechs are still alive.
    ->security_room 
    
* "Killjoy, hack the mechs[."]," you order.
    //no one injured but mechs are still alive
    //door still locked [Go to Locked Security Door]  → [Security Room]
    Killjoy hacks the mechs and they freeze in place.
    The team safely approaches the locked door.
    ->locked_door


===locked_door
TODO: What happens here?

->END