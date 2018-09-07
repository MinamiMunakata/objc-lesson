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
        int id = 0;
        while (true) {
            NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow - See details\nquit - Exit Application\n> ";
            
            NSString *option = [InputHandler getUserInputWithLength:20 withPrompt:menu];
            
            if ([option isEqualToString:@"quit"]) {
                break;
            } else if ([option isEqualToString:@"new"]) {
                // 1. get user input for name and email
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter the name: "];
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter the email: "];
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
                Contact *newcontact = [[Contact alloc] initWithId:id andName:name andEmail:email andPhone:phoneBook];
                // 3. add the contact to ContactList's contactList
                [contactList addContact:newcontact];
                id++;
            } else if ([option isEqualToString:@"list"]) {
                NSLog(@"%@", contactList);;
            }
        }
        
        // Contact *contact = [[Contact alloc] initWithName:@"John Smith" andEmail:@"js@email.com"];
        // NSLog(@"%@", contact);
    }
    return 0;
}
