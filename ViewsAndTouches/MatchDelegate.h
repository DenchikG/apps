//
//  MatchDelegate.h
//  ViewsAndTouches
//
//  Created by Denys Gryganskyi on 9/26/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MatchDelegate <NSObject>
-(void)didChooseView: (UIView *) view;

@end
