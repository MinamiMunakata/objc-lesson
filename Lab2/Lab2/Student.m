//
//  Student.m
//  Lab2
//
//  Created by Minami Munakata on 2018-09-05.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "Student.h"
// Class: User-defined type (template)
// - states (attributes) (public, private)
// - methods (behaviors)
@interface Student ()
// define private properties
// define private methods
@end

@implementation Student {
    
}
// implement methods
- (instancetype)initWithId: (int) identification andName: (NSString *) name andCountry: (NSString *) country
{
    self = [super init];
    if (self) {
        _identification = identification;
        _name = name;
        _country = country;
    }
    return self;
}

@end
