//
//  CherryManager.m
//  Lab11
//
//  Created by Minami Munakata on 2018-09-14.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "CherryManager.h"

@implementation CherryManager

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return YES;
}

- (void)kitchenDidMakePizza:(Pizza *)pizza {
    NSLog(@"UPGRADE!! You have a wonderful day!");
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

@end
