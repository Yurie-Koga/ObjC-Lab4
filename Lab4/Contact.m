//
//  Contact.m
//  Lab4
//
//  Created by Uji Saori on 2021-02-26.
//

#import "Contact.h"

@implementation Contact


- (instancetype) initWithName:(NSString *) name AndWithEmail:(NSString *) email {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}

@end
