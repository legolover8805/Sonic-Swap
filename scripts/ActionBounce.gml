if (Ground == false) {
    scrPlayerHandleBreakableTerrain();
    scrPlayerHandleMonitors();
    exit;
}
else {
    Ground = false;
    Gravity = -7.5;
    ShieldAction = false;
    Action = ActionJumping;
}
