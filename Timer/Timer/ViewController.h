//
//  ViewController.h
//  Timer
//
//  Created by Denys Gryganskyi on 9/19/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <UIKit/UIKit.h>
NSDate *currentTime;
NSTimer *updateTimer;
NSTimer *timer;
@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *startButton;
@property (weak, nonatomic) IBOutlet UIButton *stopButton;
@property (weak, nonatomic) IBOutlet UIButton *pauseButton;
@property (weak, nonatomic) IBOutlet UIButton *stopWatch;
@property (weak, nonatomic) IBOutlet UIButton *timeModeButton;
@property (weak, nonatomic) IBOutlet UIDatePicker *pickATime;

@end
