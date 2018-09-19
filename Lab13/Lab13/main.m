//
//  main.m
//  Lab13
//
//  Created by Minami Munakata on 2018-09-17.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatine.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Input");
        NSLog(@">");
        char str[100];
        fgets(str, 100, stdin);
        NSString *input = [[NSString alloc] initWithUTF8String:str];
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSLog(@"%@",[input stringByPigLatinization​:input]);
        
    }
    return 0;
}
