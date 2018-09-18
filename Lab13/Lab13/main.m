//
//  main.m
//  Lab13
//
//  Created by Minami Munakata on 2018-09-17.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char str[100];
        fgets(str, 100, stdin);
        NSString *input = [[NSString alloc] initWithUTF8String:str];
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [input lowercaseString];
        NSArray *strArr = [input componentsSeparatedByString:@" "];
        NSArray *vowel = [NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u", nil];
        for (NSString * word in strArr) {
            NSUInteger length = word.length;
            NSMutableString *pig = [NSMutableString string];
            unichar buffer[length + 1];
            [word getCharacters:buffer range:NSMakeRange(0, length)];
            int i = 0;
            while () {
                <#statements#>
            }
        }
    }
    return 0;
}
