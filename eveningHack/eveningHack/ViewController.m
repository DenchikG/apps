//
//  ViewController.m
//  eveningHack
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButton:(id)sender {
    float d1= _textField1.text.intValue;
    float d2=_textField2.text.intValue;
    float d3= d1 + d2;
    NSString *answer=[NSString stringWithFormat:@"%f",d3];
    _label.text=answer;
}

- (IBAction)minusButton:(id)sender {
    float d1= _textField1.text.intValue;
    float d2=_textField2.text.intValue;
    float d3= d1 - d2;
    NSString *answer=[NSString stringWithFormat:@"%f",d3];
    _label.text=answer;
}

- (IBAction)multiButton:(id)sender {
    float d1= _textField1.text.intValue;
    float d2=_textField2.text.intValue;
    float d3= d1 * d2;
    NSString *answer=[NSString stringWithFormat:@"%f",d3];
    _label.text=answer;
}

- (IBAction)divButton:(id)sender {
    if (_textField2==0) {
        NSLog(@"Impossible to complete function");
    }else{
        float d1= _textField1.text.intValue;
        float d2=_textField2.text.intValue;
        float d3= d1 / d2;
        NSString *answer=[NSString stringWithFormat:@"%f",d3];
        _label.text=answer;
    }
}
@end
