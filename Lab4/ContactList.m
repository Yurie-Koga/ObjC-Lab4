//
//  ContactList.m
//  Lab4
//
//  Created by Uji Saori on 2021-02-26.
//

#import "ContactList.h"
#import "Contact.h"

@implementation ContactList

- (instancetype) init {
    self = [super init];
    if (self) {
        _contacts = [NSMutableArray array];
    }
    return self;
}


- (void)addContact:(Contact *) newContact {
    [_contacts addObject:newContact];
}

- (void)displayContacts {
    for (int i = 0; i < [_contacts count]; i++) {
        Contact *c = [_contacts objectAtIndex:i];
        NSLog(@"%d:<%@> (%@)", i, c.name, c.email);
    }
}

@end
