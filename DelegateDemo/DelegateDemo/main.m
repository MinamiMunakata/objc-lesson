//
//  main.m
//  DelegateDemo
//
//  Created by Minami Munakata on 2018-09-13.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Greeter.h"
#import "LovelyPerson.h"
#import "GrumpyPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        GrumpyPerson *javier = [GrumpyPerson new];
        LovelyPerson *giada = [LovelyPerson new];
        
        Greeter *kenta = [Greeter new];
        kenta.delegate = javier;
        
        [kenta greet];
    }
    return 0;
}
