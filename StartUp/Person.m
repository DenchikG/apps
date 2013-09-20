//
//  Person.m
//  StartUp
//
//  Created by Denys Gryganskyi on 9/19/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name;
@synthesize email;
@synthesize age;
-(Person *)copy;
{
    Person *copyPerson= [[Person alloc]init];
    copyPerson.name=self.name;
    copyPerson.email=self.email;
    return copyPerson;
}

-(id)initWithPerson:(Person *)newPerson;
{
    self.name=newPerson.name;
    self.email=newPerson.email;
    return newPerson;
}
-(int)age{
    if (age>50) {
        return 21;
    }
    else{
        return age;
    }
}
@end
                              