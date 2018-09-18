//
//  Apartment.h
//  ARCDemo
//
//  Created by Minami Munakata on 2018-09-18.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@interface Apartment : NSObject

@property (nonatomic, strong) NSString *unit;
@property (nonatomic, strong) Person *tenant;

- (instancetype)initWithUnit: (NSString *) unit;

@end
