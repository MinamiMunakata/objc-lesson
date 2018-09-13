//
//  main.m
//  Lab10
//
//  Created by Minami Munakata on 2018-09-13.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger paymentAmount = arc4random_uniform(900) + 100;
        NSString *message = [NSString stringWithFormat: @"\nThank you for shopping at Acme.com\nYour total today is $%ld\nPlease select your payment method: 1: Paypal, 2: Stripe, 3: Amazon\n", paymentAmount];
        NSInteger paymentMethod = [[InputHandler getUserInputWithLength:10 withPrompt:message] integerValue];
        PaymentGateway paymentGateway = [PaymentGateway new];
        [paymentGateway processPaymentAmount:paymentAmount];
        
    }
    return 0;
}
