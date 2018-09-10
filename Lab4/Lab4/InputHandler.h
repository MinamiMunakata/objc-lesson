//
//  InputHandler.h
//  Lab3
//
//  Created by Minami Munakata on 2018-09-06.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject
+ (NSString *) getUserInputWithLength: (int) maxLength withPrompt: (NSString *)prompt;
+ (NSString *) getUserInputWithoutNewLine: (NSString *)prompt andLength: (int) maxLength;

@end
