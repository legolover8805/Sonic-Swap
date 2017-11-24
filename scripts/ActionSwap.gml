// Sonic and Tails Swap
if (global.Character[0] == consCharacterSonic && global.Character[1] == consCharacterTails) {
    global.Character[0] = consCharacterTails;
    global.Character[1] = consCharacterSonic;
    scrPlayerChangeCharacter(consCharacterTails, 0);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterSonic, 0);
    }
} else if (global.Character[0] == consCharacterTails && global.Character[1] == consCharacterSonic) {
    global.Character[0] = consCharacterSonic;
    global.Character[1] = consCharacterTails;
    scrPlayerChangeCharacter(consCharacterSonic, 0);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterTails, 0);
    }
// Sonic and Knuckles Swap
} else if (global.Character[0] == consCharacterSonic && global.Character[1] == consCharacterKnuckles) {
    global.Character[0] = consCharacterKnuckles;
    global.Character[1] = consCharacterSonic;
    scrPlayerChangeCharacter(consCharacterKnuckles, 0);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterSonic, 0);
    }
} else if (global.Character[0] == consCharacterKnuckles && global.Character[1] == consCharacterSonic) {
    global.Character[0] = consCharacterSonic;
    global.Character[1] = consCharacterKnuckles;
    scrPlayerChangeCharacter(consCharacterSonic, 0);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterKnuckles, 0);
    }

// Tails and Knuckles Swap
} else if (global.Character[0] == consCharacterTails && global.Character[1] == consCharacterKnuckles) {
    global.Character[0] = consCharacterKnuckles;
    global.Character[1] = consCharacterTails;
    scrPlayerChangeCharacter(consCharacterKnuckles, 0);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterTails, 0);
    }
} else if (global.Character[0] == consCharacterKnuckles && global.Character[1] == consCharacterTails) {
    global.Character[0] = consCharacterTails;
    global.Character[1] = consCharacterKnuckles;
    scrPlayerChangeCharacter(consCharacterTails, 0);
    with global.Player[1] {
        scrPlayerChangeCharacter(consCharacterKnuckles, 0);
    }
}

scrReloadAnimations(true);
swap = 1;
Action = ActionJumping;
