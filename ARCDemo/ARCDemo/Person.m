//
//  Person.m
//  ARCDemo
//
//  Created by Minami Munakata on 2018-09-18.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName: (NSString *) name
{
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"%@ is dead.", _name);
}

@end
