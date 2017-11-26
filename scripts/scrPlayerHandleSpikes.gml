

  // --------
    _ObjectHandle = collision_rectangle(x-28, y-25, x+29, y+25, objSpike, false, true);
    BlockWidth = 32;
    BlockHeight = 32;
    if(Action == ActionDashing) {
        if(_ObjectHandle != noone) {
            with (_ObjectHandle) {
                audio_play_sound(sndObjectBreak, 1, false);      
                instance_create(x,y,objExplosionSFX);
                instance_destroy();
            }
        }
        if(TerrainId != noone && instance_exists(TerrainId) && TerrainId.object_index == objSpike && Ground){
            if(TerrainId.image_angle == 0){
                with (TerrainId) {
                    audio_play_sound(sndObjectBreak, 1, false);  
                    instance_create(x,y,objExplosionSFX);    
                    instance_destroy();
                }
            }
        }
    }
    _ObjectHandle = collision_rectangle(x-9, y-16, x+9, y-24, objSpike, false, true);
    if(Action == ActionHurt || Invincibility > 0 || instance_exists(objSpike) == false || Action == ActionDashing)
        exit;
    

    if(TerrainId != noone && instance_exists(TerrainId) && TerrainId.object_index == objSpike && Ground){
        if(TerrainId.image_angle == 0)
            scrPlayerHurt(TerrainId, sndPlayerSpike)
    }
  
    
    if(_ObjectHandle != noone){
        if(_ObjectHandle.image_angle == 180)
            scrPlayerHurt(_ObjectHandle, sndPlayerSpike);        
    }
    
    _ObjectHandle = collision_line(x, y+4, x+12, y+4, objSpike, false, true);
    if(_ObjectHandle != noone){
        if(_ObjectHandle.image_angle == 90)
            scrPlayerHurt(_ObjectHandle, sndPlayerSpike);        
    }
    _ObjectHandle = collision_line(x, y+4, x-12, y+4, objSpike, false, true);
    if(_ObjectHandle != noone){
        if(_ObjectHandle.image_angle == 270)
            scrPlayerHurt(_ObjectHandle, sndPlayerSpike);        
    }
