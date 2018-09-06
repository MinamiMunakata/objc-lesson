//
//  ScoreKeeper.m
//  Lab3
//
//  Created by Minami Munakata on 2018-09-06.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void) scoreRight: (int) right andWrong: (int) wrong {
    int rate = ((float) right / (right + wrong)) * 100;
    NSLog(@"score: %d right, %d wrong ---- %d%%", right, wrong, rate);
}

@end
