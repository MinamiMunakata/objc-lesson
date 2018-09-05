#import <Foundation/Foundation.h>


NSString *getUserInput(NSString *prompt){
    char inputChars[255];
    NSLog(@"%@",prompt);
    fgets(inputChars,255,stdin);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    //trim the string, new line and space of Inputstring
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

void *selectOptions(){
    NSInteger infinity = 1;
    while(infinity){
        printf("[1] Uppercase\n");
        printf("[2] Lowercase\n");
        printf("[3] Numberize\n");
        printf("[4] Canadianize\n");
        printf("[5] Respond\n");
        printf("[6] De-Space-It\n");
        printf("[0] Quit\n");
        NSString *opt = getUserInput(@"Choose and enter the number of option: ");
        NSInteger num = [opt integerValue];
        NSString *input;
        switch(num){
            case 0:
                infinity = 0;
                break;
            case 1:
                input = getUserInput(@"Enter your name:");
                NSLog(@"%@", [input uppercaseString]);
                break;
            case 2:
                input = getUserInput(@"Enter your name:");
                NSLog(@"%@", [input lowercaseString]);
                break;
            case 3:
                input = getUserInput(@"Enter numbers:");
                NSInteger inputNSInt = [input integerValue];
                NSLog(@"%d",inputNSInt);
                break;
            case 4:
                input = getUserInput(@"Enter something on your mind:");
                NSString *canadianized = [input stringByAppendingString:@",eh?"];
                [NSString stringWithFormat:@"%@/%@",input,@",eh?"];
                NSLog(@"%@", canadianized);
                break;            
            case 5:
                input = getUserInput(@"Enter any question:");
                NSString *last = [input substringFromIndex:[input length]-1];
                if([last isEqualToString:@"?"]){
                    NSLog(@"%@",@"I don't know");
                }else if([last isEqualToString:@"!"]){
                    NSLog(@"%@",@"Whoa, calm down!");
                }
                break;
            case 6:
                input = getUserInput(@"Enter something on your mind:");
                NSString *space = [input stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                NSLog(@"%@",space);
                break;
        }
    }

}

int main (int argc, const char * argv[])
{
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    selectOptions();    
    [pool drain];
    return 0;

}