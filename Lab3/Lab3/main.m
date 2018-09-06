//
//  main.m
//  Lab3
//
//  Created by Minami Munakata on 2018-09-06.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        ScoreKeeper *myScore = [ScoreKeeper new];
        while (gameOn) {
            // AdditionQuestion *q = [[AdditionQuestion alloc] init];
            AdditionQuestion *q = [AdditionQuestion new];
            NSString *userAnswer = [InputHandler getUserInputWithLength:10 withPrompt:[q question]];
            // NSLog(@"%@",[q question]);
            // NSString *userAnswer = getUserInput(10, [q question]);
            NSInteger userAnsInt = [userAnswer integerValue];
            if ([q answer] == userAnsInt) {
                NSLog(@"Right!");
                [myScore setRight:[myScore right] + 1];
            } else if ([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else {
                NSLog(@"Wrong!");
                [myScore setWrong:[myScore wrong] + 1];
            }
            [myScore scoreRight:[myScore right] andWrong:[myScore wrong]];
        }
    }
    return 0;
}
