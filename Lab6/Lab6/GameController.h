//
//  GameController.h
//  Lab6
//
//  Created by Minami Munakata on 2018-09-11.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, strong) NSMutableArray *displayDice;
@property (nonatomic, strong) NSMutableArray *scoreRecords;
@property (nonatomic, assign) NSUInteger bestScore;

- (void) roll;
- (void) displayCurrentDeck;
- (void) holdDie: (NSUInteger) die;
- (void) resetDice;
- (void) holdAll;
- (void) displayScore;
- (void) makeAllDice1;
- (void) resetGame;

@end
