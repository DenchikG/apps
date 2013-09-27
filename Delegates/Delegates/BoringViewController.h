//
//  BoringViewController.h
//  Delegates
//
//  Created by Denys Gryganskyi on 9/23/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDelegate.h"
#import "TextDelegate.h"

@interface BoringViewController : UIViewController <TextDelegate,UITextFieldDelegate>
@property (strong, nonatomic)id <ColorDelegate> delegate;
@property (strong,nonatomic)id <TextDelegate> delegate2;
@end
