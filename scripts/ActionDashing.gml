
if(Numberthings < 240 && Numberthings > 0){
    Speed = 10*image_xscale;
    var inst = instance_place(x,y,objSpike);
    if(inst != noone) {
        with(inst){
            instance_destroy();
        }
    }
    if (Numberthings/60 == floor(Numberthings/60) || Numberthings == 1)
        audio_play_sound(sndMSElec, 1, false);
    Numberthings += 1;
    exit;
} else if (Numberthings == 240) {
    EndDashingFrames = 0;
    Action       = ActionEndDashing;
}
global.Rings -= 5;
if global.Rings < 0 
    global.Rings = 0;
Speed        = 10*image_xscale;
Gravity      = 0;
audio_play_sound(sndMSCharge, 1, false);
Numberthings += 1;
exit;
