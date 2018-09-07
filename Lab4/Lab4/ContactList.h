//
//  ContactList.h
//  Lab4
//
//  Created by Minami Munakata on 2018-09-07.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

@interface ContactList : NSObject
// NSArray -> array[]
// NSMutableArray -> ArrayList<>()
@property (nonatomic, strong) NSMutableArray *contactList;
- (void) addContact: (Contact *) newContact;
- (void) listAllContacts;

@end
