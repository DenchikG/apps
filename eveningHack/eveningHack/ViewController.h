//
//  ViewController.h
//  eveningHack
//
//  Created by Denys Gryganskyi on 9/18/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)addButton:(id)sender;
- (IBAction)minusButton:(id)sender;
- (IBAction)multiButton:(id)sender;
- (IBAction)divButton:(id)sender;

@end
