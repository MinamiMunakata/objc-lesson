//
//  SubtractionQuestion.m
//  Lab5
//
//  Created by Minami Munakata on 2018-09-10.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion{
    super.question = [NSString stringWithFormat:@"%ld - %ld = ", (long)super.leftValue, (long)super.rightValue];
    super.answer = super.leftValue - super.rightValue;
}

@end
