//
//  PaymentGateway.h
//  Lab10
//
//  Created by Minami Munakata on 2018-09-13.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate <NSObject>

- (void) processPaymentAmount: (NSInteger) paymentAmount;
- (BOOL) canProcessPayment;
@end

@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;

-(void) processPaymentAmount: (NSInteger) paymentAmount;

@end
