//
//  main.m
//  Lab4
//
//  Created by Minami Munakata on 2018-09-07.
//  Copyright © 2018 Minami Munakata. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contactList = [[ContactList alloc] init];

        while (true) {
            NSString *menu = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n> ";
            
            NSString *option = [InputHandler getUserInputWithLength:20 withPrompt:menu];
            
            if ([option isEqualToString:@"quit"]) {
                break;
            } else if ([option isEqualToString:@"new"]) {
                // 1. get user input for name and email
                NSString *name = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter the name: "];
                NSString *email = [InputHandler getUserInputWithLength:255 withPrompt:@"\nEnter the email: "];
                
                // 2. create a contact object based on the user input
                Contact *newcontact = [[Contact alloc] initWithName:name andEmail:email];
                NSString *phoneOption = [InputHandler getUserInputWithLength:1 withPrompt:@"\nDo you want to add phone number? (y/n)"] ;
                if ([phoneOption isEqualToString:@"y"]) {
                    NSString *phone = [InputHandler getUserInputWithLength:20 withPrompt:@"\nHome / Work / Mobile?"];
                    if (<#condition#>) {
                        <#statements#>
                    }
                }
                
                // 3. add the contact to ContactList's contactList
                [contactList addContact:newcontact];
            } else if ([option isEqualToString:@"list"]) {
                NSLog(@"%@", contactList);;
            }
        }
        
        // Contact *contact = [[Contact alloc] initWithName:@"John Smith" andEmail:@"js@email.com"];
        // NSLog(@"%@", contact);
    }
    return 0;
}
