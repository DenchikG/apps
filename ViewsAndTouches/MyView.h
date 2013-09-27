//
//  MyView.h
//  ViewsAndTouches
//
//  Created by Denys Gryganskyi on 9/26/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MatchDelegate.h"

@interface MyView : UIView 

@property(strong,nonatomic) id<MatchDelegate> delegate;
@end
