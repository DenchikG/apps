//
//  ComputerHand.m
//  RockPaperScissors
//
//  Created by Denys Gryganskyi on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "ComputerHand.h"

@implementation ComputerHand
-(NSString *) generateComputerHand
{
    int x= rand() %3;
    if (x==0) {
        return @"rocks";
    }
    if (x==1) {
        return @"scissor";
    }
    if (x==2) {
        return @"paper";
    }
}
@end
