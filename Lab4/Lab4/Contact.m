//
//  Contact.m
//  Lab4
//
//  Created by Minami Munakata on 2018-09-07.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (instancetype)initWithId: (int) id andName: (NSString *) name andEmail: (NSString *)email andPhone: (NSMutableDictionary *)phoneBook
{
    self = [super init];
    if (self) {
        _id = id;
        _name = name;
        _email = email;
        _phoneBook = phoneBook;
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"\n<%@> (%@)", self.name, self.email];
}

- (NSString *)detail
{
    return @"Hey";
}

@end
