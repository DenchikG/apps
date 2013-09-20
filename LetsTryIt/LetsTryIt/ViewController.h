//
//  ViewController.h
//  LetsTryIt
//
//  Created by Denys Gryganskyi on 9/18/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)onPress:(id)sender;
- (IBAction)onPress2:(id)sender;
- (IBAction)onPressSecondButton:(id)sender;
- (IBAction)showSecond:(id)sender;

@end
