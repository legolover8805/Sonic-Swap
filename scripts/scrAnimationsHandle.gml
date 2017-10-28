
    switch(Action){    
        case ActionNormal:
            //--- Peel Out ----
            if(abs(Speed) >= 12 && (Animation != "Breath"|| Ground == true))
                Animation = "MovePeelOut";
            //--- Running ----
            else if(abs(Speed) >= 6 && (Animation != "Breath"|| Ground == true))
                Animation = "Running";
            //--- Jogging ----
            else if(abs(Speed) >= 4 && (Animation != "Breath"|| Ground == true))
                Animation = "Jogging";
            //--- Walking -----
            else if(((abs(Speed) > 0 && abs(Speed) < 4) || KeyLeft || KeyRight) &&(Animation != "Breath"|| Ground == true))  
                Animation = "Walking";
            else if(Speed == 0 && Angle == 0 && Ground){
                
                    //---- Balancing -----------
                    if((RightEdge > 4 && RightEdge < 10 && image_xscale == 1) || (LeftEdge > 4 && LeftEdge < 10 && image_xscale == -1))
                        Animation = "BalanceOut";
                    else if((RightEdge <= 4 && image_xscale == 1) || (LeftEdge <= 4 && image_xscale == -1))
                        Animation = "BalanceOut2";
                    else if((LeftEdge < 10 && image_xscale == 1)|| (RightEdge < 10 && image_xscale == -1))
                        Animation = "BalanceIn";
                    //--------------------------
                    else if(Animation != "Breath"){
                        if(CharacterId == consCharacterSonic && SuperForm == false){
                        //_________________________________\\
                        //____________SONIC________________\\
                        //_________________________________\\
                            AnimationTotalFrames += 1;
                            if(AnimationTotalFrames <= 180)
                                Animation = "Idle"; 
                            else if(AnimationTotalFrames > 180 && AnimationTotalFrames <= 186)
                                Animation = "Blink";
                            else if(AnimationTotalFrames > 186 && AnimationTotalFrames <= 196)
                                Animation = "IdleWait0";
                            else if(AnimationTotalFrames > 196 && AnimationTotalFrames <= 596)
                                Animation = "IdleWait1";
                            else if(AnimationTotalFrames > 596 && AnimationTotalFrames <= 871)
                                Animation = "IdleWait2";
                            else if(AnimationTotalFrames > 871){
                                Animation = "Idle";
                                AnimationTotalFrames = 1;
                            }
                        }else if(CharacterId == consCharacterTails){
                        //_________________________________\\
                        //____________TAILS________________\\
                        //_________________________________\\
                            AnimationTotalFrames += 1;
                            if(AnimationTotalFrames <= 200 )
                                Animation = "Idle"; 
                            else if(AnimationTotalFrames > 200 && AnimationTotalFrames <= 455)
                                Animation = "IdleWait1";
                            else if(AnimationTotalFrames > 455){
                                Animation = "Idle";
                                AnimationTotalFrames = 1;
                            }
                    //_________________________________\\
                    //____________KNUCKLES_____________\\
                    //_________________________________\\
                    
                    }else if(CharacterId == consCharacterKnuckles){
                        AnimationTotalFrames += 1;
                        if(AnimationTotalFrames <= 200 )
                            Animation = "Idle"; 
                        else if(AnimationTotalFrames > 200 && AnimationTotalFrames <= 588)
                            Animation = "IdleWait0";
                        else if(AnimationTotalFrames > 588){
                            Animation = "Idle";
                            AnimationTotalFrames = 1;   
                        }
                    }
                        //_________________________________\\
                        //____________SUPER SONIC__________\\
                        //_________________________________\\
                        else if(CharacterId == consCharacterSonic && SuperForm == true){
                            Animation = "Idle";  
                        //_________________________________\\
                        //____________OTHER_CHAR___________\\
                        //_________________________________\\ 
                        }else{
                            Animation = "Idle"; 
                        }
                       }    
                    
                    }else if(Ground){
                        Animation = "Idle";  
                    }
                
                
            else if(Ground){
                Animation = "Idle";  
            }else if(Animation != "Breath"){
                if(Fan == false)
                    Animation = "Walking";
                else
                    Animation = "Corkscrew";
            }
            break;
        case ActionJumping:
        case ActionRolling:
        case ActionPipe:
            Animation = "Rolling";
            break;
        case ActionSpindash:
            if(Spindash == 2)
                Animation = "Rolling";
            else
                Animation = "Spindash";
            break;
        case ActionCrouchDown:
            Animation = "CrouchDown";
            break;
        case ActionQuicksand:
            Animation = "Rolling";
            break;
        case ActionSpring:
            if(Gravity <= 0 && Animation != "Diagonal" && Animation != "Corkscrew")
                Animation = "Spring";
            else if(Animation != "Diagonal" && Animation != "Corkscrew")
                Animation = "Walking";
            break;
        case ActionSkid:
            Animation = "Skidding";
            break;
        case ActionPush:
            Animation = "Pushing";
            break;
        case ActionHurt:
        case ActionSlide:
            Animation = "Hurt";
            break;
        case ActionDead:
            Animation = "Dead";
            break;
        case ActionLookUp:
            Animation = "LookUp";
            break;
        case ActionGlide:
            Animation = "Glide";
            break;
        case ActionGlideTurn:
            Animation = "GlideTurn";
            break;
        case ActionGlideFall:
            Animation = "GlideFall";
            break;
        case ActionPeelout:
            Animation = "Peelout";
            break;
        case ActionClimb:
            Animation = "Climb";
            break;
        case ActionClimbRise:
            if(Animation != "Idle")
                Animation = "ClimbRise";
            break;
        case ActionGlideSlide:
            if(Animation != "GlideSlide2" && Animation != "Idle")
                Animation = "GlideSlide";
            break;
        case ActionTransform:
            if(Animation != "Transform")
                Animation = "Transform";
            break;
        case ActionOuttaHere:
            if(Animation != "OuttaHere")
                Animation = "OuttaHere";
            break;
        case ActionFly:
            if(Underwater == false){
                if(FlyTimer > 0)
                    Animation = "Fly";
                else
                    Animation = "FlyTired";
            }else{
                if(FlyTimer > 0)
                    Animation = "Swim";
                else
                    Animation = "SwimTired";
            }
            break;
        case ActionGrab:
            if(Animation != "Grab")
                Animation = "Grab";
            break;
        case ActionCPURespawn:
            if(CharacterId == consCharacterTails){
                if(Underwater == false)
                    Animation = "Fly";
                else
                    Animation = "Swim";         
            }else if(CharacterId == consCharacterKnuckles){
                Animation = "Glide";
                image_index = 1;                
            }else
                Animation = "Rolling";    
            break;
        case ActionCorkscrew:
            if(Animation != "Corkscrew" && Animation != "Rolling")
                Animation = "Corkscrew";
            break;
    }
