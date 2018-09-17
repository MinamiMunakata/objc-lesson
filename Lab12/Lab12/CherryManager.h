//
//  CherryManager.h
//  Lab11
//
//  Created by Minami Munakata on 2018-09-14.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
@class DeliveryService;

@interface CherryManager : NSObject <KitchenDelegate>
@property (nonatomic, strong) DeliveryService *service;

- (instancetype)initWithDeliveryService: (DeliveryService *) service;

@end
