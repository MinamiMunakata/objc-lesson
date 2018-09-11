//
//  Dice.h
//  Lab6
//
//  Created by Minami Munakata on 2018-09-11.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject
@property (nonatomic, assign) NSUInteger faceValue; // unsigned integaer / NSIntegere -> long integer
@property (nonatomic, assign) Boolean held; // BOOL -> c

+ (instancetype) dice;
- (void) roll;

@end
