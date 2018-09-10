//
//  AdditionQuestion.m
//  Lab3
//
//  Created by Minami Munakata on 2018-09-06.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        // generate 2 random ints using arc4random_uniform
        int left = arc4random_uniform(90) + 10;
        int right = arc4random_uniform(90) + 10;
        
        // make question string
        _question = [NSString stringWithFormat:@"%d + %d = ", left, right];
        // Slightly different from "self.question = ..." (This is using getter)
        
        // get the answer and assign to answer
        _answer = left + right;
        
        _startTime = [NSDate date];
    }
    return self;
}

- (NSInteger)answer {
    _endTime = [NSDate date];
    return _answer;
}

- (NSTimeInterval)answerTime{
    return [_endTime timeIntervalSinceDate:_startTime];
}

@end
