//
//  ViewController.m
//  InterfaceBuilderHowdwich
//
//  Created by Denys Gryganskyi on 9/18/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _label.text= @"Mobile Makers Rule";
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPress:(id)sender {
    _label.text = @"Mobile Makers Rule";
}

- (IBAction)onButtonPress:(id)sender {
    _label.text = @"Denys";
}
- (IBAction)onButtonPress2:(id)sender {
    _label.text = _textField.text;
}
@end
