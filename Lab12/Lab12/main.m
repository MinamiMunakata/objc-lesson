//
//  main.m
//  Lab12
//
//  Created by Minami Munakata on 2018-09-17.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "Pizza.h"
#import "ManagerWhoHatesAnchovies.h"
#import "CherryManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        Kitchen *restaurantKitchen = [Kitchen new];
        DeliveryService *service = [DeliveryService new];
        CherryManager *manager = [[CherryManager alloc] initWithDeliveryService:service];
        
        while (TRUE) {
            // Loop forever
            restaurantKitchen.delegate = manager;
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
                [restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]];
            } else if ([commandWords[0] isEqualToString:@"medium"]) {
                int size = medium;
                [restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]];
            } else if ([commandWords[0] isEqualToString:@"large"]) {
                int size = small;
                [restaurantKitchen makePizzaWithSize:size toppings:[NSArray arrayWithObjects:commandWords[1],commandWords[2],commandWords[3], nil]];
            }
            // command to see all items which are being deliverd.
            NSLog(@"See info? (y/n)");
            NSLog(@"> ");
            char cstr[100];
            fgets (cstr, 100, stdin);
            NSString *option = [[NSString alloc] initWithUTF8String:cstr];
            option = [option stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            if ([option isEqualToString:@"y"]) {
                NSLog(@"%@", service);
            }
        }
    }
    return 0;
}

