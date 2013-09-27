//
//  TextDelegate.h
//  Delegates
//
//  Created by Denys Gryganskyi on 9/23/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TextDelegate <NSObject>

-(void)changeText:(NSString *)text;
@end
