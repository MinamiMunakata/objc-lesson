//
//  Pizza.h
//  Lab11
//
//  Created by Minami Munakata on 2018-09-14.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>


// Make a type with options
// C way
typedef enum {
    small,
    medium,
    large
} PizzaSize;
//enum PizzaSize {
//  small,
//  medium,
//  large
//};

@interface Pizza : NSObject

// enum PizzaSize is now a type
@property (nonatomic, assign) PizzaSize size;
//@property (nonatomic, assign) enum PizzaSize size;
@property (nonatomic, strong) NSArray *toppings;

- (instancetype)initWithSize: (PizzaSize) size andToppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoverWithSize: (PizzaSize) size;

@end
