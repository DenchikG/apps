//
//  ViewController.h
//  Delegates
//
//  Created by Denys Gryganskyi on 9/23/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorDelegate.h"
#import "TextDelegate.h"
@interface ViewController : UIViewController <ColorDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;


@end
