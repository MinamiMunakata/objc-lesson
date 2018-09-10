//
//  QuestionFactory.m
//  Lab5
//
//  Created by Minami Munakata on 2018-09-10.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"]; // array of NSString
    }
    return self;
}

- (Question *) genarateRandomQuestion {
    // return an instance of +, -, /, * Question object.
    NSString *type = [_questionTypes objectAtIndex:arc4random_uniform(4)];
    // AdditionQuestion, SubstractionQuestion, MultiplicationQuestion, DivisionQuestion
    // [[AdditionQuestion alloc] init];
    
    return [[NSClassFromString(type) alloc] init];
}

@end
