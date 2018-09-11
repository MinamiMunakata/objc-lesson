//
//  main.m
//  Lab6
//
//  Created by Minami Munakata on 2018-09-11.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "GameController.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *menu = @"\n'roll' to roll the dice\n'hold' to hold a dice\n'reset' to un-hold all dice\n'show' to see current dice\n'done' to end the game\n'display' to show current status\n";
        GameController *player1 = [[GameController alloc] init];
        while (true) {
            NSString *input = [InputHandler getUserInputWithLength:10 withPrompt:menu];
            
            // roll, hold, reset, display, quit
            if ([input isEqualToString:@"roll"]) {
                [player1 roll];
                [player1 displayCurrentDeck];
                
            } else if ([input isEqualToString:@"quit"]) {
                break;
            } else if ([input isEqualToString:@"quit"]) {
                break;
            } else if ([input isEqualToString:@"quit"]) {
                break;
            } else if ([input isEqualToString:@"quit"]) {
                break;
            } else if ([input isEqualToString:@"quit"]) {
                break;
            } else if ([input isEqualToString:@"quit"]) {
                break;
            }
        }
    }
    return 0;
}
