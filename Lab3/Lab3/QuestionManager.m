//
//  QuestionManager.m
//  Lab3
//
//  Created by Minami Munakata on 2018-09-10.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
        
    }
    return self;
}

- (NSString *) timeOutput {
    AdditionQuestion *last = [_questions objectAtIndex:[_questions count] - 1];
    AdditionQuestion *first = [_questions objectAtIndex:0];
    
    NSTimeInterval timeInterval = [[last endTime] timeIntervalSinceDate:[first startTime]];
    long second = lroundf(timeInterval);
    
    // long unsigned -> lus
    return [NSString stringWithFormat:@"total time: %lds, average time: %lus", second, second / [_questions count]];
}

@end
