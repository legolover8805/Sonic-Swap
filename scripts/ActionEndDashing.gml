Animation = "EndDashing";
if (EndDashingFrames < 120 && EndDashingFrames > 0) {
    Speed = 6*image_xscale;
    Animation = "Vulnerable";
    EndDashingFrames += 1;
    exit;
}
if EndDashingFrames == 120 {
    EndDashingFrames = 0;
    Action = ActionNormal;
}
Speed = 6*image_xscale;
EndDashingFrames = 1;


