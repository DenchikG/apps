//
//  MMObject.m
//  Memory
//
//  Created by Denys Gryganskyi on 9/26/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "MMObject.h"

@implementation MMObject
-(void)dealloc{
    NSLog(@"MMObject deallocated %@",self);
    [super dealloc];
}

@end
