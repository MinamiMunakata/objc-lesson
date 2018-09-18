//
//  Person.h
//  ARCDemo
//
//  Created by Minami Munakata on 2018-09-18.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apartment.h"

@interface Person : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, weak) Apartment *apartment;

- (instancetype)initWithName: (NSString *) name;

@end
