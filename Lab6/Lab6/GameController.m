//
//  GameController.m
//  Lab6
//
//  Created by Minami Munakata on 2018-09-11.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//
#import "GameController.h"
#define MAX_ROLL 5
@interface GameController()
{
@private int rollCount;
}
@end

@implementation GameController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _displayDice = [NSMutableArray arrayWithObjects:[Dice dice], [Dice dice], [Dice dice], [Dice dice], [Dice dice], nil]; //the last element should always be "nil";
        rollCount = MAX_ROLL;
    }
    return self;
}

- (void) roll {
    // if I have more than 1 roll counts left, I can roll all 5 dice in the array.
    // except for the ones that are held by user.
    if (rollCount > 0) {
        for (Dice *die in _displayDice) {
            if (![die held]) {
                [die roll];
            }
        }
        rollCount--;
        NSLog(@"Remaining Rolls: %d", rollCount);
        if (rollCount == 0) {
            [self holdAll];
        }
    } else {
        NSLog(@"You can't roll more than %d times.", MAX_ROLL);
    }
}

- (void) displayCurrentDeck {
    NSMutableString *currentDeck = [NSMutableString string];
    for (Dice *die in _displayDice) {
        [currentDeck appendFormat:@" %@ ", [die description]];
    }
    NSLog(@"%@", currentDeck);
    [self displayScore];
}


- (void) holdDie: (NSUInteger) index {
    // 1. check if the die is already held.
    // 2. change the held property of the die.
    Dice *die = [_displayDice objectAtIndex:(index - 1)];
    [die setHeld:![die held]];
}

- (void) resetDice {
    // 1. iterate through each die, unhold every die
    for (Dice *die in _displayDice) {
        if ([die held]) {
            [die setHeld:false];
        }
    }
}

- (void) holdAll {
    // 1. iterate through each die, hold every die
    for (Dice *die in _displayDice) {
        if (![die held]) {
            [die setHeld:true];
        }
    }
}

- (void) displayScore {
    NSMutableString *displayMessage = [NSMutableString string];
    // 1. check if the game is over (rollCount)
    if (rollCount == 0) {
        //    - GAME OVER
        [displayMessage appendString:@"\n- GAME OVER\nYour "];
    } else {
        //    - print the currentDeck and the score (the sum of faceValues)
        // 2. not over
        [displayMessage appendString:@"\nYour current "];
    }
    //    - print the currentDeck and the score (the sum of faceValues)
    NSUInteger score = 0;
    for (Dice *die in _displayDice) {
        if ([die held]) {
            score += [die faceValue];
        }
    }
    [displayMessage appendString:@"score is "];
    NSLog(@"%@%ld",displayMessage, score);
}

- (void) makeAllDice0{
    if (rollCount > 0) {
        for (Dice *die in _displayDice) {
            [die setFaceValue:1];
        }
        rollCount--;
        NSLog(@"Remaining Rolls: %d", rollCount);
        [self holdAll];
    }

}

- (void) resetGame{
    rollCount = MAX_ROLL;
    [self resetDice];
}
@end

