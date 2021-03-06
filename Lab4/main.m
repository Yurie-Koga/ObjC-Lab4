//
//  main.m
//  Lab4
//
//  Created by Uji Saori on 2021-02-26.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        ContactList *contacts = [[ContactList alloc] init];

        NSArray *menus = @[@"new", @"list", @"quit"];
        NSArray *menuDescriptions = @[@"new - Create a new contact", @"list - List all contacts", @"quit - Exit Application"];
        NSString *prompt = @"\nWhat would you like to do next?";
        for (int i = 0; i < [menuDescriptions count]; i++) {
            NSString *str = [NSString stringWithFormat: @"\n%@", [menuDescriptions objectAtIndex: i]];
            prompt = [prompt stringByAppendingString: str];
        }
        
        bool isContinue = YES;
        while (isContinue) {
            NSString *strInput = [InputHandler getUserInputWithMax: 255 AndPrompt: prompt];
            NSInteger item = [menus indexOfObject: strInput];
            
//            if(item == 0) {
//                NSString *inputName = [InputHandler getUserInputWithMax: 255 AndPrompt: @"\ninput name: "];
//                NSString *inputEmail = [InputHandler getUserInputWithMax: 255 AndPrompt: @"\ninput email: "];
//                Contact *person1 = [[Contact alloc] initWithName:inputName AndWithEmail:inputEmail];
//                [contacts addContact:person1];
//            } else if (item == 1) {
//                [contacts displayContacts];
//            } else if (item == 2) {
//                printf("Application will be terminated....\n");
//                break;
//            } else {
//                printf("input is invalid\n");
//            }
            
            // 1. switch can handle only integer (also char shince it's integer)
            // 2. need a block '{}' when want to declare variables inside cases
            switch (item) {
                case 0:;
                {
                    NSString *inputName = [InputHandler getUserInputWithMax: 255 AndPrompt: @"\ninput name: "];
                    NSString *inputEmail = [InputHandler getUserInputWithMax: 255 AndPrompt: @"\ninput email: "];
                    Contact *person1 = [[Contact alloc] initWithName:inputName AndWithEmail:inputEmail];
                    [contacts addContact:person1];
                    break;
                }
                case 1:
                    [contacts displayContacts];
                    break;
                case 2:
                    printf("Application will be terminated....\n");
                    isContinue = NO;
                    break;
                default:
                    printf("input is invalid\n");
                    break;
            }
        }
    }
    return 0;
}
