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
        NSLog(@"---------->");
        char str[100];
        fgets(str, 100, stdin);
        NSString *input = [[NSString alloc] initWithUTF8String:str];
        input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        [input lowercaseString];
        NSLog(@"%@", input);
        NSArray *strArr = [input componentsSeparatedByString:@" "];
        NSArray *vowel = [NSArray arrayWithObjects:@"a",@"e",@"i",@"o",@"u", nil];
        NSLog(@"----------");
        for (NSString * word in strArr) {
            NSLog(@"----------1 %@", word);
            NSUInteger length = word.length;
            NSMutableString *pig = [NSMutableString string];
            NSLog(@"----------2");
            unichar buffer[length + 1];
            [word getCharacters:buffer range:NSMakeRange(0, length)];
            NSLog(@"----------3");
            int i = 0;
            while (i < length) {
                NSLog(@"%c", buffer[i]);
                i++;
            }
        }
    }
    return 0;
}
