//
//  main.m
//  Lab2
//
//  Created by Minami Munakata on 2018-09-05.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Student.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Box *box1 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:10];
        Box *box2 = [[Box alloc] initWithWidth:5 andHeight:5 andLength:5];
        NSLog(@"%.2f", [box1 volume]);
        NSLog(@"%.2f", [box1 ratio:box2]);
    }
    return 0;
}
