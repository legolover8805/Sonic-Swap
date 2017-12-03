
    var spindashSnd;    
    if(Delay == true){
        SpindashRev    = global.Player[0].SpindashRev;
        image_xscale   = global.Player[0].image_xscale;
        if(global.Player[0].Action != ActionSpindash){
            Speed = (SpindashMin+SpindashRev)*image_xscale;
            audio_play_sound(sndPlayerSpindash, 1, false);
            scrPlayerResetTrail();
            Action = ActionRolling;
            scrPlayerHandleMonitors(); 
        }
        exit;
    }

    if(Spindash == 1){
        if(KeyAPressed){
            SpindashRev = min(SpindashRev+SpindashRevAmount, SpindashMax-8);
            audio_stop_sound(sndPlayerSpindashRev);
            spindashSnd = audio_play_sound(sndPlayerSpindashRev, 1, false);
            audio_sound_pitch(spindashSnd, (SpindashMin+SpindashRev)/10)
        }
        SpindashRev -= (SpindashRev/0.125)/256;
    
        if(KeyDown == false){
            audio_stop_sound(sndPlayerSpindashRev);
            Speed = (((SpindashMin+SpindashRev))+(3*SuperForm))*image_xscale;
            audio_play_sound(sndPlayerSpindash, 1, false);

            scrPlayerResetTrail();
            Action = ActionRolling;

            if(CameraLag == true && global.Boss == false){
                objCamera.CameraLock   = true;
                objCamera.alarm[0]     = 16;
            }    
       
            scrPlayerHandleMonitors();
        }
    }else if(KeyDown == false && Spindash == 2){
        if(global.Frame >= SpindashFrame+45){
            Speed = (12*image_xscale);
            
            audio_play_sound(sndPlayerSpindash, 1, false);
            scrPlayerResetTrail();
            Action = ActionRolling;
            scrPlayerHandleMonitors();
        }else{
            Action = ActionNormal;
        }
    }
