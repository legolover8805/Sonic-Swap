
// Sonic and Tails Swap
if (global.Character[0] == consCharacterSonic && global.Character[1] == consCharacterTails) {
    global.Character[0] = consCharacterTails;
    global.Character[1] = consCharacterSonic;
    scrPlayerChangeCharacter(consCharacterTails, global.Player[0].SuperForm);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterSonic, global.Player[0].SuperForm);
    }
} else if (global.Character[0] == consCharacterTails && global.Character[1] == consCharacterSonic) {
    global.Character[0] = consCharacterSonic;
    global.Character[1] = consCharacterTails;
    scrPlayerChangeCharacter(consCharacterSonic, global.Player[0].SuperForm);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterTails, global.Player[0].SuperForm);
    }
    
// Sonic and Knuckles Swap
} else if (global.Character[0] == consCharacterSonic && global.Character[1] == consCharacterKnuckles) {
    global.Character[0] = consCharacterKnuckles;
    global.Character[1] = consCharacterSonic;
    scrPlayerChangeCharacter(consCharacterKnuckles, global.Player[0].SuperForm);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterSonic, global.Player[0].SuperForm);
    }
} else if (global.Character[0] == consCharacterKnuckles && global.Character[1] == consCharacterSonic) {
    global.Character[0] = consCharacterSonic;
    global.Character[1] = consCharacterKnuckles;
    scrPlayerChangeCharacter(consCharacterSonic, global.Player[0].SuperForm);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterKnuckles, global.Player[0].SuperForm);
    }

// Tails and Knuckles Swap
} else if (global.Character[0] == consCharacterTails && global.Character[1] == consCharacterKnuckles) {
    global.Character[0] = consCharacterKnuckles;
    global.Character[1] = consCharacterTails;
    scrPlayerChangeCharacter(consCharacterKnuckles, global.Player[0].SuperForm);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterTails, global.Player[0].SuperForm);
    }
} else if (global.Character[0] == consCharacterKnuckles && global.Character[1] == consCharacterTails) {
    global.Character[0] = consCharacterTails;
    global.Character[1] = consCharacterKnuckles;
    scrPlayerChangeCharacter(consCharacterTails, global.Player[0].SuperForm);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterKnuckles, global.Player[0].SuperForm);
    }
}

scrReloadAnimations(true);
swap = 1;
audio_play_sound(sndPlayerTransform, 1, false);
Action = ActionJumping;
