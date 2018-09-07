//
//  ContactList.m
//  Lab4
//
//  Created by Minami Munakata on 2018-09-07.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import "ContactList.h"
#import <Foundation/Foundation.h>

@implementation ContactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        _contactList = [[NSMutableArray alloc] init]; // init with size = 0
        // [NSMutableArray new]
        // [NSMutableArray array]
    }
    return self;
}

- (void) addContact: (Contact *) newContact {
    [_contactList addObject:newContact];
}

- (NSString *)description {
    NSMutableString *result = [NSMutableString new];
    int count = 0;
    
    for (Contact *contact in _contactList) {
        NSString *contactStr = [NSString stringWithFormat:@"\n#:%d %@", count, contact];
        count++;
        [result appendString:contactStr];
    }
    return result;
}

@end
