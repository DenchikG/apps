//
//  MagicEightBall.m
//  MagicEightBall
//
//  Created by Denys Gryganskyi on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "MagicEightBall.h"

@implementation MagicEightBall
-(NSString *)magicFunction{
    int x= rand()%4;
    if (x==0) {
        return @"to become developer";
    }
    if (x==1) {
        return @"i found already";
    }
    if (x==2) {
        return @"i defenetely will";
    }
    if (x==3) {
        return @"too young for this question";
    }
    
    
}
@end
