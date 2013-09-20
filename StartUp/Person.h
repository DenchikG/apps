//
//  Person.h
//  StartUp
//
//  Created by Denys Gryganskyi on 9/19/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (strong,nonatomic) NSString *name;
@property (strong,nonatomic) NSString *email;
@property (nonatomic) int age;

-(Person *)copy;
-(id)initWithPerson:(Person *)newPerson;
@end
