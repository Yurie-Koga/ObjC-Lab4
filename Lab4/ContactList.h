//
//  ContactList.h
//  Lab4
//
//  Created by Uji Saori on 2021-02-26.
//

#import <Foundation/Foundation.h>
#import "Contact.h"

NS_ASSUME_NONNULL_BEGIN

@interface ContactList : NSObject

@property (nonatomic, assign) NSMutableArray *contacts;

- (instancetype) init;
- (void)addContact:(Contact *) newContact;
- (void)displayContacts;

@end

NS_ASSUME_NONNULL_END
