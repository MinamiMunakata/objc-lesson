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
            NSMutableString *pig = [NSMutableString string];
            NSUInteger firstVow;
            NSUInteger length = word.length;
            for (NSUInteger i = 0; i < length; i++) {
                <#statements#>
            }
            
            
        }
    }
    return 0;
}
(int) indexOfFirstVowel: (NSString *) word {
    
}
