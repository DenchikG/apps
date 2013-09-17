//
//  judge.m
//  RockPaperScissors
//
//  Created by Denys Gryganskyi on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "judge.h"

@implementation judge
-(BOOL)didComputerWin:(NSString *)computer vs:(NSString *) player
{
    if ([computer isEqual: @"rocks"] && ![player isEqual:@"paper"]){
        return YES;
    }
    if([computer isEqual:@"paper"] && ![player isEqual:@"scissors"]){
        return YES;
    }
        if([computer isEqual:@"scissors"] && ![player isEqual: @"rocks"]) {
        return YES;
    }else{
        return NO;
    }
}
@end
