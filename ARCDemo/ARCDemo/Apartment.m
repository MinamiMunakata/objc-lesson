//
//  Apartment.m
//  ARCDemo
//
//  Created by Minami Munakata on 2018-09-18.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "Apartment.h"

@implementation Apartment

- (instancetype)initWithUnit: (NSString *) unit
{
    self = [super init];
    if (self) {
        _unit = unit;
    }
    return self;
}

- (void)dealloc // override
{
    NSLog(@"Apartment-%@ is destroyed", _unit);
}

@end
