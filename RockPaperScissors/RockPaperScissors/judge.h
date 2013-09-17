//
//  judge.h
//  RockPaperScissors
//
//  Created by Denys Gryganskyi on 9/17/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface judge : NSObject
-(BOOL)didComputerWin:(NSString *)computer vs:(NSString *)player;
@end
