//
//  ViewController.m
//  LetsTryIt
//
//  Created by Denys Gryganskyi on 9/18/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _label.text = @"Mobile Makers Rule";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPress:(id)sender {
    _label.text = @"Serious Rules";
}

- (IBAction)onPress2:(id)sender {
    _label.text = _textField.text;
}

- (IBAction)onPressSecondButton:(id)sender {
    
}

- (IBAction)showSecond:(id)sender {
    secondViewController *secondViewController2 =[[secondViewController alloc]init];
    [self presentViewController:secondViewController2 animated:YES completion:nil];
}
@end
