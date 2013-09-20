//
//  Person.m
//  properties
//
//  Created by Denys Gryganskyi on 9/19/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "Person.h"

@implementation Person
@synthesize name;
@synthesize salary;
@synthesize netsalary;
-(float) netsalary{
    return salary - (salary*0.15);
}
/*-(void)setName:(NSString *)_den{
    name=_den;
}*/


@end
