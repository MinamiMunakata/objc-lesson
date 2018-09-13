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
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSInteger paymentAmount = arc4random_uniform(900) + 100;
        NSString *message = [NSString stringWithFormat: @"\nThank you for shopping at Acme.com\nYour total today is $%ld\nPlease select your payment method: 1: Paypal, 2: Stripe, 3: Amazon 4: ApplePay\n", paymentAmount];
        NSInteger paymentMethod = [[InputHandler getUserInputWithLength:10 withPrompt:message] integerValue];
        PaymentGateway *paymentGateway = [PaymentGateway new];
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        switch (paymentMethod) {
            case 1:
                paymentGateway.paymentDelegate = paypal;
                break;
            case 2:
                paymentGateway.paymentDelegate = stripe;
                break;
            case 3:
                paymentGateway.paymentDelegate = amazon;
                break;
            default:
                break;
        }
        [paymentGateway processPaymentAmount:paymentAmount];
        
        
    }
    return 0;
}
