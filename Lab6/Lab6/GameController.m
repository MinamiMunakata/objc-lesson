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
}

- (void) holdDie: (NSUInteger) die {
    // 1. check if the die is already held.
    // 2. change the held property of the die.
    [[_displayDice objectAtIndex:die] setHeld:![_displayDice objectAtIndex:die]];
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
        [displayMessage appendString:@"\n- GAME OVER"];
    }
    //    - print the currentDeck and the score (the sum of faceValues)
    // 2. not over
    //    - print the currentDeck and the score (the sum of faceValues)
    
}
@end

