//
//  ViewController.h
//  ViewFunHouse
//
//  Created by keith Alperin on 4/30/13.
//  Copyright (c) 2013 Mobile Makers. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)switchingOnOff:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UISlider *slider;
- (IBAction)sliding:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *slidingResult;
@property (weak, nonatomic) IBOutlet UILabel *firstWhiteBox;
@property (weak, nonatomic) IBOutlet UILabel *secondWhiteBox;
@property (weak, nonatomic) IBOutlet UILabel *mathResult;
- (IBAction)mathAction:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)colorChenge:(id)sender;
- (IBAction)changeColor:(id)sender;

@end
