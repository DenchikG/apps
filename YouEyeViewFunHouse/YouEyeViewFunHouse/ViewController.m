//
//  ViewController.m
//  ViewFunHouse
//
//  Created by keith Alperin on 4/30/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    _label.text = @"ON";
}


- (IBAction)switchingOnOff:(id)sender {
    if ([_label.text isEqualToString:@"ON"]) {
        _label.text=@"OFF";
    }
    else {
         _label.text=@"ON";
        }
}
- (IBAction)sliding:(id)sender {
    UISlider *slider=sender;
    _slidingResult.text=[NSString stringWithFormat:@"Slider:%.2f",slider.value];
}
- (IBAction)mathAction:(id)sender {
    int n1= _firstWhiteBox.text.intValue;
    int n2= _secondWhiteBox.text.intValue;
    int n3= n1 + n2;
    NSString *answer=[NSString stringWithFormat:@"%d",n3];
    _mathResult.text= answer;
}
- (IBAction)colorChenge:(id)sender {
    UIImage *image = [UIImage imageNamed:@"MobileMakersLogo_color.png"];
    [_imageView setImage:image];
}

- (IBAction)changeColor:(id)sender {
    /*UIButton *myButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [myButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:myButton];*/
        UIButton *button = (UIButton *)sender;
        [button setBackgroundColor:[UIColor redColor]];
    
}
@end
