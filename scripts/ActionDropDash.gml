
if (Ground == false) {
    Animation = "DropDash";

    exit;
}
else {

            instance_create(x-3, y, objSpinDashDust);
            instance_create(x, y+13, objSkidDust);   
            Speed = (9*image_xscale);
            audio_play_sound(sndPlayerSpindash, 1, false);
            scrPlayerResetTrail();
            Action = ActionRolling;
            scrPlayerHandleMonitors();
}
