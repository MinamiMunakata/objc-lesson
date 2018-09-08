//
//  main.m
//  Lab4
//
//  Created by Minami Munakata on 2018-09-07.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contactList = [[ContactList alloc] init];
        while (true) {
            NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - See details\nfind keyword - search for the contact information by the keyword\nquit - Exit Application\n> ";
            
            NSString *option = [InputHandler getUserInputWithLength:20 withPrompt:menu];
            
            if ([option isEqualToString:@"quit"]) {
                break;
            } else if ([option isEqualToString:@"new"]) {
                // 1. get user input for name and email
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter the email: "];
                if ([contactList isDublicate:email]) {
                    NSLog(@"\nThe email is already added in the contact list");
                } else {
                    NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter the name: "];
                    NSMutableDictionary *phoneBook = [NSMutableDictionary dictionary];
                    
                    while (true) {
                        NSString *phoneOption = [InputHandler getUserInputWithLength:10 withPrompt:@"\nDo you want to add phone number? (y/n)"];
                        if ([phoneOption isEqualToString:@"n"]) {
                            break;
                        } else if ([phoneOption isEqualToString:@"y"]) {
                            NSString *phone = [InputHandler getUserInputWithLength:20 withPrompt:@"\nEnter the phone number: "];
                            NSString *phoneLabel = [InputHandler getUserInputWithLength:30 withPrompt:@"\nChoose [home / work / mobile]"];
                            if ([phoneLabel isEqualToString:@"home"]) {
                                
                                [phoneBook setObject:phone forKey:@"home"];
                                NSLog(@"\nSuccessfully added. You can add another phone number.");
                            } else if ([phoneLabel isEqualToString:@"work"]){
                                [phoneBook setObject:phone forKey:@"work"];
                                NSLog(@"\nSuccessfully added. You can add another phone number.");
                            } else if ([phoneLabel isEqualToString:@"mobile"]) {
                                [phoneBook setObject:phone forKey:@"mobile"];
                                NSLog(@"\nSuccessfully added. You can add another phone number.");
                            } else {
                                NSLog(@"\nInvalid input. Choose again.");
                            }
                        }
                    }
                    // 2. create a contact object based on the user input
                    Contact *newcontact = [[Contact alloc] initWithName:name andEmail:email andPhone:phoneBook];
                    // 3. add the contact to ContactList's contactList
                    [contactList addContact:newcontact];
                }
            } else if ([option isEqualToString:@"list"]) {
                NSLog(@"%@", contactList);;
            } else if ([option isEqualToString:@"show"]) {
                NSString *phoneBookId = [InputHandler getUserInputWithLength:10 withPrompt:@"\nEnter the id: "];
                NSLog(@"%@", [contactList showDetailsAtIndex:[phoneBookId intValue]]);
            } else if ([option containsString:@"find"]){
                NSArray *option_array = [option componentsSeparatedByString:@" "];
                NSString *find_option = [option_array objectAtIndex:0];
                if ([option_array count] > 1) {
                    if ([find_option isEqualToString:@"find"]) {
                        NSString *keyword = [option_array objectAtIndex:1];
                        if (keyword != NULL) {
                            NSLog(@"%@",[contactList showDetailsAtIndex:[contactList find:keyword]]);
                        }
                    }
                }

            }
        }
    }
    return 0;
}
