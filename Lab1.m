#import <Foundation/Foundation.h>


NSString *getUserInput(NSString *prompt){
    char inputChars[255];
    NSLog(@"%@",prompt);
    fgets(inputChars,255,stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    //trim the string, new line and space of Inputstring
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

void *showOptions(){
}

int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
        // insert code here...
        NSString *input = getUserInput(@"Enter your name:");
        //uppercase
        NSLog(@"%@", [input uppercaseString]);
        
        //lowercase
        NSLog(@"%@", [input lowercaseString]);
        
        //Num
        // int inputInt = [input intValue];
        NSInteger inputNSInt = [input integerValue];
        NSLog(@"%@",inputNSInt);
        
        //canada
        NSString *canadianized = [input stringByAppendingString:@",eh?"];
        [NSString stringWithFormat:@"%@/%@",input,@",eh?"];
        NSLog(@"%@", canadianized);
        
        //ends with ?
        NSString *last = [input substringFromIndex:[input length]-1];
        NSLog(@"%@", last);
        
        if([last isEqualToString:@"?"]){
            NSLog(@"%@",@"I don't know");
        }else if([last isEqualToString:@"!"]){
            NSLog(@"%@",@"Whoa, calm down!");
        }
       
        //replace splace with something else
        NSString *space = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        NSLog(@"%@",space);
    
    [pool drain];
    return 0;

}