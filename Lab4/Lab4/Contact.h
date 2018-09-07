//
//  Contact.h
//  Lab4
//
//  Created by Minami Munakata on 2018-09-07.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject
@property (nonatomic, assign) int id;
@property (nonatomic, strong) NSString * name;
@property (nonatomic, strong) NSString * email;
@property (nonatomic, strong) NSMutableDictionary * phoneBook;
- (instancetype)initWithId: (int) id andName: (NSString *) name andEmail: (NSString *)email andPhone: (NSMutableDictionary *)phoneBook;

@end
