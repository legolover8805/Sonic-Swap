
if (Numberthings == 0) {
    global.Rings -= 5;
    if global.Rings < 0 
        global.Rings = 0;
    Speed        = 10*image_xscale;
    Gravity      = 0;
    audio_play_sound(sndMSCharge, 1, false);
    Numberthings = 1;
    exit;
}
if(Numberthings < 240 && Numberthings > 0){
    Speed = 10*image_xscale;
    var inst = instance_place(x,y,objSpike);
    if(inst != noone) {
        with(inst){
            instance_destroy();
        }
    }
    Numberthings += 1;
    if (Numberthings == 240 || !KeyC && Numberthings > 30) {
        EndDashingFrames = 0;
        Action       = ActionNormal;
    }
    exit;
} 


