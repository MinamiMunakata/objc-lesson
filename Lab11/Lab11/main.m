//
//  main.m
//  Lab11
//
//  Created by Minami Munakata on 2018-09-13.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "ManagerWhoHatesAnchovies.h"
#import "CherryManager.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Kitchen *restaurantKitchen = [Kitchen new];
        ManagerWhoHatesAnchovies *managerA;
        CherryManager *managerB;
        
        while (TRUE) {
            // Loop forever
            // manager option
            NSLog(@"Choose [1] managerA, [2] managerB, or [3] no manager at all");
            NSLog(@"> ");
            char cstr[100];
            fgets (cstr, 100, stdin);
            NSString *option = [[NSString alloc] initWithUTF8String:cstr];
            option = [option stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([option integerValue] == 3) {
                restaurantKitchen.delegate = nil;
            } else if ([option integerValue] == 1) {
                if (!managerA) {
                    managerA = [ManagerWhoHatesAnchovies new];
                }
                restaurantKitchen.delegate = managerA;
            } else if ([option integerValue] == 2) {
                if (!managerB) {
                    managerB = [CherryManager new];
                }
                restaurantKitchen.delegate = managerB;
            }
            
            // get user input
            NSLog(@"Please pick your pizza size and toppings:");
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // And then send some message to the kitchen...
            if ([commandWords[0] isEqualToString:@"small"]) {
                int size = small;
                NSLog(@"%@",[restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]]);
            } else if ([commandWords[0] isEqualToString:@"medium"]) {
                int size = medium;
                NSLog(@"%@",[restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]]);
            } else if ([commandWords[0] isEqualToString:@"large"]) {
                int size = small;
                NSLog(@"%@",[restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]]);
            }
            
        }
        
    }
    return 0;
}

