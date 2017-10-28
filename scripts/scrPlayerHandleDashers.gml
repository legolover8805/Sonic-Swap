

    if(instance_exists(objDasher)){
        _ObjectHandle = collision_rectangle(x-15, y-10, x+15, y+20, objDasher, false, true)
        if(_ObjectHandle != noone && _ObjectHandle != DasherId){
            audio_play_sound(sndObjectSpring, 1, false);

            Speed = max(16, Speed);
            image_xscale = 1;
            DasherId = _ObjectHandle;
            InputAlarm = 16;
        }else if(_ObjectHandle == noone){
            DasherId = noone;
        }
    }
