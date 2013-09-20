//
//  ViewController.h
//  InterfaceBuilderHowdwich
//
//  Created by Denys Gryganskyi on 9/18/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
- (IBAction)onPress:(id)sender;
- (IBAction)onButtonPress:(id)sender;
@end
