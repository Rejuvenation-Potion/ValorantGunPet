//Injures a random agent and then returns their name as a string
===function RandomInjury()
    VAR agent_to_injure = 0
    ~agent_to_injure = RANDOM(1,3)
    {
        //1 is Brimstone
        -agent_to_injure == 1:
            {
            -brim_injured == true:
                ~return "Brimstone"
            -else:
            ~brim_injured = true
            ~return "Brismtone"
            }
        
        //2 is Viper
        -agent_to_injure == 2:
            {
            -viper_injured == true:
                ~return "Viper"
            -else:
            ~viper_injured = true
            ~return "Viper"
            }
        
        //3 is Killjoy
        -agent_to_injure == 3:
            {
            -kj_injured == true:
                ~return "Killjoy"
            -else:
            ~kj_injured = true
            ~return "Killjoy"
            }
        
        //If not 1, 2, or 3 (somehow), just return
        -else:
            ~return
    }