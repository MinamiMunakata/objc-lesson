//
//  ManagerWhoHatesAnchovies.m
//  Lab11
//
//  Created by Minami Munakata on 2018-09-14.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "ManagerWhoHatesAnchovies.h"

@implementation ManagerWhoHatesAnchovies

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    if ([toppings containsObject:@"anchovies"]) {
        return NO;
    }
    return YES;
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end
