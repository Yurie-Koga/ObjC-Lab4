//
//  Contact.h
//  Lab4
//
//  Created by Uji Saori on 2021-02-26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Contact : NSObject

@property (nonatomic, assign) NSString *name;
@property (nonatomic, assign) NSString *email;

- (instancetype) initWithName:(NSString *) name AndWithEmail:(NSString *) email;

@end

NS_ASSUME_NONNULL_END
