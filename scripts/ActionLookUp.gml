

    if(KeyUp == false) {
        Action = ActionLookDown;
        
    }else if(KeyAPressed && UsePeelout == true && CharacterId == consCharacterSonic && SuperForm == false){
        SpindashFrame = global.Frame;
        audio_play_sound(sndPeelout, 1, false);
        Action = ActionPeelout;

    }else if(KeyAPressed && Ground == true)
        scrPlayerJump();
        

