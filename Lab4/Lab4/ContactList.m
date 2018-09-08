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

- (NSString *) showDetailsAtIndex: (int) id {
    if (id > [self.contactList count] || id < 0) {
        return @"not found";
    }
    Contact *contact = [self.contactList objectAtIndex:id];
    NSMutableString *phoneInfo = [NSMutableString new];
    for (NSString *key in [contact.phoneBook allKeys]){
        [phoneInfo appendString:@"Phone("];
        [phoneInfo appendString:key];
        [phoneInfo appendString:@"): "];
        [phoneInfo appendString:[contact.phoneBook valueForKey:key]];
        [phoneInfo appendString:@"\n"];
    }
    NSString *details = [NSString stringWithFormat:@"\nName: %@\nEmail: %@\n%@",contact.name, contact.email, phoneInfo];
    return details;
}

- (BOOL) isDublicate: (NSString *)email {
    if ([self.contactList count] == 0) {
        return false;
    }
    for (Contact *contact in self.contactList) {
        if ([contact.email isEqualToString:email]) {
            return true;
        }
    }
    return false;
}

- (int) find: (NSString *)keyword {
    int id = 0;
    if ([self.contactList count] == 0) {
        return -1;
    }
    for (Contact *contact in self.contactList) {
        if ([contact.name containsString:keyword]) {
            return id;
        }
        if ([contact.email containsString:keyword]) {
            return id;
        }
        id++;
    }
    return -1;
}


@end
