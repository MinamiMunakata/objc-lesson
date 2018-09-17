//
//  DeliveryService.m
//  Lab12
//
//  Created by Minami Munakata on 2018-09-17.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "DeliveryService.h"
#import "Pizza.h"

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _car = [DeliveryCar new];
        _allInformationOfPizza = [NSMutableArray array];
    }
    return self;
}

- (void) deliverPizza:(Pizza *)pizza {
    [self.allInformationOfPizza addObject:[pizza description]];
    [self.car deliverPizza:pizza];
    [self description];
    
}

- (NSString *)description
{
    NSMutableString *info = [NSMutableString string];
    int i = 1;
    for (NSString *descript in self.allInformationOfPizza) {
        [info appendString:[NSString stringWithFormat: @"\n[%d] ", i]];
        [info appendString:descript];
        [info appendString:@" "];
        i++;
    }
    return [NSString stringWithFormat:@"%@", info];
}
@end
