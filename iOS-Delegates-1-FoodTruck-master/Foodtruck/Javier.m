//
//  Javier.m
//  Foodtruck
//
//  Created by Minami Munakata on 2018-09-13.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Javier.h"

@implementation Javier
-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if ([food isEqualToString:@"bao"]) {
        return 10.99;
    } else if ([food isEqualToString:@"shortbread"]) {
        return 15.99;
    } else {
        return 35.99;
    }
}

@end
