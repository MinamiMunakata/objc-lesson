//
//  Greeter.m
//  DelegateDemo
//
//  Created by Minami Munakata on 2018-09-13.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (void) greet {
    if ([_delegate shouldSayHello]) {
        NSLog(@"Hola");
    } else {
        NSLog(@"Adios");
    }
}

@end
