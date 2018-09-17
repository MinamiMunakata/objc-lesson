//
//  Kitchen.m
//  Lab11
//
//  Created by Minami Munakata on 2018-09-14.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    if (self.delegate == nil) {
        return [[Pizza alloc] initWithSize:size andToppings:toppings];
    }
    if ([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
        if ([self.delegate kitchenShouldUpgradeOrder:self]) {
            size = large;
        }
        Pizza *pizza = [[Pizza alloc] initWithSize:size andToppings:toppings];
        if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
            [self.delegate kitchenDidMakePizza:pizza];
        }
        return pizza;
    }
    return nil;
}

@end
