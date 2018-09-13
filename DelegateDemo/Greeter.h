//
//  Greeter.h
//  DelegateDemo
//
//  Created by Minami Munakata on 2018-09-13.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GreeterDelegate.h"

@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;

- (void) greet;

@end
