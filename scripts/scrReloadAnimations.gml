///scrReloadAnimations(reload)




    if(argument0 == false)    
        scrAnimationSystemCreate();  
    else{
        ds_grid_destroy(Animations)
        scrAnimationSystemCreate();   
    }
    if(CharacterId == consCharacterSonic){
        if(SuperForm == false){
            scrAnimationSystemAddSimple("Idle", 0, sprS2SonicIdle);
            scrAnimationSystemAddSimple("Blink", 0, sprS2SonicBlink);
            scrAnimationSystemAddSimple("IdleWait0", 0, sprS2SonicIdleWait0);
            scrAnimationSystemAddSimple("IdleWait1", 0.15, sprS2SonicIdleWait1);
            scrAnimationSystemAddSimple("IdleWait2", 0.33, sprS2SonicIdleWait2); 
            scrAnimationSystemAdd("IdleWait3", 0.08, sprS2SonicIdleWait3, 1);
            scrAnimationSystemAdd("CrouchDown", 0.25, sprS2SonicCrouchDown, 3);
            scrAnimationSystemAddSimple("CrouchUp", 0.25, sprS2SonicCrouchUp);
            scrAnimationSystemAdd("LookUp", 0.25, sprS2SonicLookUp, 4);
            scrAnimationSystemAddSimple("LookDown", 0.25, sprS2SonicLookDown);
            scrAnimationSystemAddSimple("Pushing", 0.125, sprS2SonicPush);
            scrAnimationSystemAddSimple("Dead", 0, sprS2SonicDead);
    
            scrAnimationSystemAddSimple("Walking", 0.125, sprS2SonicWalk);
            scrAnimationSystemAddSimple("Jogging", 0.3, sprS2SonicJog);
            scrAnimationSystemAddSimple("Running", 0.125, sprS2SonicRun);
            scrAnimationSystemAddSimple("MovePeelOut", 0.125, sprS2SonicPeelOutMove);
            
            scrAnimationSystemAddSimple("Fall", 0.125, sprS2SonicFall);
    
            scrAnimationSystemAddRepeat("Skidding", 0.25, sprS2SonicSkid, false, 1, "Walking");
            scrAnimationSystemAdd("Hurt", 0.2, sprS2SonicHurt, -1);
            
            scrAnimationSystemAddSimple("BalanceIn",   0.25, sprS2SonicBalanceIn);
            scrAnimationSystemAddSimple("BalanceOut",  0.25, sprS2SonicBalanceOut);
            scrAnimationSystemAddSimple("BalanceOut2", 0.25, sprS2SonicBalanceOut2);
    
            scrAnimationSystemAddSimple("Rolling",  0.2,  sprS2SonicRoll);
            scrAnimationSystemAddSimple("Spindash", 1,  sprS2SonicSpindash);
            scrAnimationSystemAddSimple("DropDash", 1, sprS2SonicDropDash);
    
            scrAnimationSystemAddSimple("Spring", 0.5, sprS2SonicSpring);
            scrAnimationSystemAddSimple("Diagonal", 0.5, sprS2SonicDiagonalSpring);
            scrAnimationSystemAdd("Peelout", 0.5, sprS2SonicPeelout, 12);
    

            scrAnimationSystemAddSimple("Breath", 0.15, sprS2SonicBreath);
            scrAnimationSystemAdd("Transform", 0.3, sprS2SonicTransform,  12);
            scrAnimationSystemAddSimple("Grab", 0.2, sprS2SonicGrab);
            scrAnimationSystemAddSimple("Corkscrew", 0, sprS2SonicCorkscrew);

            scrAnimationSystemAdd("OuttaHere", 0.1, sprS2SonicOuttaHere, 8);
            
            scrAnimationSystemAddSimple("Fly", 0.3, sprS2SonicJog);
            scrAnimationSystemAddSimple("Glide", 0.3, sprS2SonicJog);
        }else{
            scrAnimationSystemAddSimple("Idle", 0.25, sprS2SuperSonicIdle);
            scrAnimationSystemAdd("CrouchDown", 0.25, sprS2SuperSonicCrouch, 3);
            scrAnimationSystemAddSimple("CrouchUp", 0.25, sprS2SuperSonicCrouchUp);
            scrAnimationSystemAdd("LookUp", 0.25, sprS2SuperSonicLookUp, 4);
            scrAnimationSystemAddSimple("LookDown", 0.25, sprS2SuperSonicLookDown);
            scrAnimationSystemAddSimple("Pushing", 0.125, sprS2SuperSonicPush);
            scrAnimationSystemAddSimple("Dead", 0, sprS2SonicDead);
    
            scrAnimationSystemAddSimple("Walking", 0.125, sprS2SuperSonicWalk);
            scrAnimationSystemAddSimple("Jogging", 0.3, sprS2SuperSonicJog);
            scrAnimationSystemAddSimple("Running", 0.125, sprS2SuperSonicRun);
            scrAnimationSystemAddSimple("MovePeelOut", 0.125, sprS2SuperSonicDash);
            
    
            scrAnimationSystemAddRepeat("Skidding", 0.25, sprS2SuperSonicSkid, false, 3, "Walking");
            scrAnimationSystemAdd("Hurt", 0.2, sprS2SuperSonicHurt, -1);
    
            scrAnimationSystemAddSimple("BalanceIn",   0.25, sprS2SuperSonicBalance);
            scrAnimationSystemAddSimple("BalanceOut",  0.25, sprS2SuperSonicBalance);
            scrAnimationSystemAddSimple("BalanceOut2", 0.25, sprS2SuperSonicBalance);
    
            scrAnimationSystemAddSimple("Rolling",  0.2,  sprS2SuperSonicRoll);
            scrAnimationSystemAddSimple("Spindash", 0.3,  sprS2SuperSonicSpindash);
    
            scrAnimationSystemAddSimple("Spring", 0.5, sprS2SuperSonicSpring);
            scrAnimationSystemAddSimple("Diagonal", 0.5, sprS2SuperSonicDiagonalSpring);
            
            scrAnimationSystemAddSimple("Breath", 0.15, sprS2SuperSonicBreath);
            scrAnimationSystemAddSimple("Grab", 0.2, sprS2SuperSonicGrab);
            scrAnimationSystemAddSimple("Corkscrew", 0, sprS2SuperSonicCorkscrew);
            
            scrAnimationSystemAddSimple("Fly", 0.3, sprS2SuperSonicJog);
            scrAnimationSystemAddSimple("Glide", 0.3, sprS2SuperSonicJog);
        }
    }else if(CharacterId == consCharacterTails){
        scrAnimationSystemAddSimple("Idle", 0, sprS2TailsIdle);
        scrAnimationSystemAddSimple("Blink", 0.1, sprS2TailsBlink);
        scrAnimationSystemAddSimple("IdleWait0", 0, sprS2TailsWait1);
        scrAnimationSystemAddSimple("IdleWait1", 0.2, sprS2TailsWait2);
        scrAnimationSystemAdd("CrouchDown", 0.25, sprS2TailsCrouch, 3);
        scrAnimationSystemAdd("CrouchUp", 0.25, sprS2TailsCrouchUp, 3);
        scrAnimationSystemAdd("LookUp", 0.25, sprS2TailsLookUp, 4);
        scrAnimationSystemAddSimple("LookDown", 0.25, sprS2TailsLookDown);
        scrAnimationSystemAddSimple("Pushing", 0.125, sprS2TailsPush);
        scrAnimationSystemAddSimple("Dead", 0, sprS2TailsDead);
    
        scrAnimationSystemAddSimple("Walking", 0.125, sprS2TailsWalk);
        scrAnimationSystemAddSimple("Jogging", 0.3, sprS2TailsJog);
        scrAnimationSystemAdd("Running", 0.125, sprS2TailsRun, 4);
        scrAnimationSystemAddSimple("MovePeelOut", 0.125, sprS2TailsDash);
    
        scrAnimationSystemAddRepeat("Skidding", 0.25, sprS2TailsSkid, false, 1, "Walking");
        scrAnimationSystemAdd("Hurt", 0.2, sprS2TailsHurt, -1);
    
        scrAnimationSystemAddSimple("BalanceIn",   0.25, sprS2TailsBalance);
        scrAnimationSystemAddSimple("BalanceOut",  0.25, sprS2TailsBalanceOut);
        scrAnimationSystemAddSimple("BalanceOut2", 0.25, sprS2TailsBalanceOut);
    
        scrAnimationSystemAddSimple("Rolling",  0.5,  sprS2TailsRolling);
        scrAnimationSystemAddSimple("Spindash", 1,  sprS2TailsSpindash);
    
        scrAnimationSystemAddSimple("Spring", 0.5, sprS2TailsSpring);
        scrAnimationSystemAddSimple("Diagonal", 0.5, sprS2TailsDiagonal);
        
        scrAnimationSystemAddSimple("Breath", 0.15, sprS2TailsBreath);
        
        scrAnimationSystemAddSimple("Fly", 0.5, sprS2TailsFly);
        scrAnimationSystemAddSimple("FlyTired", 0.3, sprS2TailsFlyTired);
    
        scrAnimationSystemAddSimple("Swim", 0.5, sprS2TailsSwim);
        scrAnimationSystemAddSimple("SwimTired", 0.3, sprS2TailsSwimTired);
        
        scrAnimationSystemAddSimple("Grab", 0.2, sprS2TailsGrab);
        
        scrAnimationSystemAdd("Transform", 0.3, sprS2TailsTransform,  13);
        scrAnimationSystemAddSimple("Corkscrew", 0, sprS2TailsCorkscrew);
        
    }else if(CharacterId == consCharacterKnuckles){
        scrAnimationSystemAddSimple("Idle", 0., sprKnucklesIdle);
        scrAnimationSystemAddSimple("IdleWait0", 0.175, sprKnucklesWait);
        scrAnimationSystemAdd("CrouchDown", 0.25, sprKnucklesCrouch, 3);
        scrAnimationSystemAddSimple("CrouchUp", 0.25, sprKnucklesCrouchUp);
        scrAnimationSystemAdd("LookUp", 0.25, sprKnucklesLookUp, 4);
        scrAnimationSystemAddSimple("LookDown", 0.25, sprKnucklesLookDown);
        scrAnimationSystemAddSimple("Pushing", 0.125, sprKnucklesPush);
        scrAnimationSystemAddSimple("Dead", 0, sprKnucklesDead);
    
        scrAnimationSystemAddSimple("Walking", 0.125, sprKnucklesWalk);
        scrAnimationSystemAddSimple("Jogging", 0.3, sprKnucklesJog);
        scrAnimationSystemAddSimple("Running", 0.125, sprKnucklesRun);
        scrAnimationSystemAddSimple("MovePeelOut", 0.125, sprKnucklesDash);
        
        scrAnimationSystemAddRepeat("Skidding", 0.225, sprKnucklesSkid, false, 1, "Walking");
        scrAnimationSystemAdd("Hurt", 0.2, sprKnucklesHurt, -1);
    
        scrAnimationSystemAddSimple("BalanceIn",   0.25, sprKnucklesBalance2);
        scrAnimationSystemAddSimple("BalanceOut",  0.25, sprKnucklesBalance1);
        scrAnimationSystemAddSimple("BalanceOut2", 0.25, sprKnucklesBalance1);
        
        scrAnimationSystemAddSimple("Rolling",  0.2,  sprKnucklesRoll);
        scrAnimationSystemAddSimple("Spindash", 1,  sprKnucklesSpindash);
    
        scrAnimationSystemAddSimple("Spring", 0.5, sprKnucklesSpring);
        scrAnimationSystemAddSimple("Diagonal", 0.5, sprKnucklesDiagonal);
        
        scrAnimationSystemAddSimple("Breath", 0.15, sprKnucklesBreath);
        
        scrAnimationSystemAddSimple("Grab", 0.2, sprKnucklesGrab);
        
        scrAnimationSystemAddSimple("Glide", 0, sprKnucklesGlide);
        scrAnimationSystemAddSimple("GlideTurn", 0, sprKnucklesGlideTurn);
        scrAnimationSystemAdd("GlideFall", 0.2, sprKnucklesGlideFall, 3);
        scrAnimationSystemAddSimple("GlideSlide", 0.2, sprKnucklesGlideSlide);
        scrAnimationSystemAddRepeat("GlideSlide2", 0.2, sprKnucklesGlideSlide2, 1, 1, "Idle");
        scrAnimationSystemAddSimple("Climb", 0, sprKnucklesClimb);
        scrAnimationSystemAddRepeat("ClimbRise", 0.2, sprKnucklesClimbRise, 2, 1, "Idle");
        
        scrAnimationSystemAdd("Transform", 0.3, sprKnucklesTransform,  13);
        scrAnimationSystemAddSimple("Corkscrew", 0, sprKnucklesCorkscrew);
        scrAnimationSystemAddSimple("Fly", 0.3, sprKnucklesJog);
    } else if(CharacterId == consCharacterMetal){
            scrAnimationSystemAddSimple("Idle", 0, sprMSonicIdle);
            scrAnimationSystemAddSimple("IdleWait0", 0.17, sprMSonicWait);
            scrAnimationSystemAddSimple("IdleWait1", 0.17, sprMSonicWait1);
            scrAnimationSystemAddSimple("IdleWait2", 0.17, sprMSonicWait2); 
            scrAnimationSystemAdd("CrouchDown", 0.25, sprMSonicCrouchDown, 3);
            scrAnimationSystemAddSimple("CrouchUp", 0.25, sprMSonicCrouchUp);
            scrAnimationSystemAdd("LookUp", 0.25, sprMSonicLookUp, 4);
            scrAnimationSystemAddSimple("LookDown", 0.25, sprMSonicLookDown);
            scrAnimationSystemAddSimple("Pushing", 0.125, sprMSonicPush);
            scrAnimationSystemAddSimple("Dead", 0, sprMSonicDead);
    
            scrAnimationSystemAddSimple("Walking", 0.125, sprMSonicWalk);
            scrAnimationSystemAddSimple("Jogging", 0.3, sprMSonicJog);
            scrAnimationSystemAddSimple("Running", 0.125, sprMSonicRun);
            scrAnimationSystemAddSimple("MovePeelOut", 0.125, sprMSonicDash);
            
    
            scrAnimationSystemAddRepeat("Skidding", 0.25, sprMSonicSkid, false, 1, "Walking");
            scrAnimationSystemAdd("Hurt", 0.2, sprMSonicHurt, -1);
            
            scrAnimationSystemAddSimple("BalanceIn",   0.25, sprMSonicBalanceIn);
            scrAnimationSystemAddSimple("BalanceOut",  0.25, sprMSonicBalanceOut);
            scrAnimationSystemAddSimple("BalanceOut2", 0.25, sprMSonicBalanceOut);
    
            scrAnimationSystemAddSimple("Rolling",  0.2,  sprMSonicRoll);
            scrAnimationSystemAddSimple("Spindash", 1,  sprMSonicSpindash);
    
            scrAnimationSystemAddSimple("Spring", 0.5, sprMSonicSpring);
            scrAnimationSystemAddSimple("Diagonal", 0.5, sprMSonicDiag);

            scrAnimationSystemAddSimple("Breath", 0.15, sprMSonicBreath);
            scrAnimationSystemAdd("Transform", 0.3, sprMSonicTransform,  12);
            scrAnimationSystemAddSimple("Grab", 0.05, sprMSonicGrab);
            scrAnimationSystemAddSimple("Corkscrew", 0, sprMSonicCorkscrew);

            
            scrAnimationSystemAddSimple("Fly", 0.3, sprMSonicJog);
            scrAnimationSystemAddSimple("Glide", 0.3, sprMSonicJog);
            
            scrAnimationSystemAdd("Dashing", 0.5, sprMSonicDashing, 2);
            scrAnimationSystemAddRepeat("EndDashing", 0.25, sprMSonicEndDashing, false, 1, "Vulnerable");
            scrAnimationSystemAddSimple("Vulnerable", 0, sprMSonicVuln);
    }
