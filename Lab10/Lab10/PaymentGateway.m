//
//  PaymentGateway.m
//  Lab10
//
//  Created by Minami Munakata on 2018-09-13.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount: (NSInteger) paymentAmount {
    if ([self.paymentDelegate canProcessPayment]) {
        [self.paymentDelegate processPaymentAmount:paymentAmount];
    } else {
        NSLog(@"Sorry, the transaction failed.");
    }
}
@end
