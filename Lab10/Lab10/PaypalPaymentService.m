//
//  PaypalPaymentService.m
//  Lab10
//
//  Created by student on 2018-09-13.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService


- (void)processPaymentAmount:(NSInteger)paymentAmount {
    NSLog(@"Paypal processed amount $%ld", paymentAmount);
}

- (BOOL)canProcessPayment {
    if (arc4random_uniform(2)) {
        return YES;
    }
    return NO;
}


@end
