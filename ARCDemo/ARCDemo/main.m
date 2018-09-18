//
//  main.m
//  ARCDemo
//
//  Created by Minami Munakata on 2018-09-18.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apartment.h"
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Apartment *myapt = [[Apartment alloc]initWithUnit:@"123"];
        NSLog(@"Apartment created!");
        Person *p = [[Person alloc] initWithName:@"Yukako"];
        NSLog(@"Yukako came!");
        
        myapt.tenant = p;
        p.apartment = myapt;
        
        
        NSLog(@"Dealloc!");
        
        myapt = nil; // deallocate is called right before it's nil
        p = nil;
        
        NSLog(@"Done!");
    }
    return 0;
}
