//
//  StripePaymentService.m
//  Lab10
//
//  Created by student on 2018-09-13.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService

- (void)processPaymentAmount:(NSInteger)paymentAmount {
    NSLog(@"Stripe processed amount $%ld", paymentAmount);
}

- (BOOL)canProcessPayment {
    if (arc4random_uniform(2)) {
        return YES;
    }
    return NO;
}

@end
