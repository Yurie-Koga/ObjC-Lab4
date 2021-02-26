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
        Contact *person1 = [[Contact alloc] initWithName:@"Tama" AndWithEmail:@"example@example.com"];
        ContactList *contacts = [[ContactList alloc] init];
        [contacts addContact:person1];
        
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
            
            // switch: only integers are available as parameter
            switch (item) {
                case 0:
                    printf("will insert\n");
                    break;
                case 1:
                    printf("will disply list\n");
                    break;
                case 2: // quit
                    printf("Application will be terminated....\n");
                    isContinue = FALSE;
                    break;
                default:
                    printf("input is invalid\n");
                    break;
            }
        }
    }
    return 0;
}
