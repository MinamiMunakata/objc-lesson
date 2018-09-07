//
//  InputCollector.h
//  Lab4
//
//  Created by Minami Munakata on 2018-09-07.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject
+ (NSString *) inputForPrompt:(NSString *)promptString;
@end
