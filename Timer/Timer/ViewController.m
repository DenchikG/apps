//
//  ViewController.m
//  Timer
//
//  Created by Denys Gryganskyi on 9/19/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *countdown;
@property (weak, nonatomic) IBOutlet UILabel *counter;
@property (weak, nonatomic) IBOutlet UILabel *timeDown;
- (IBAction)startAction:(id)sender;
- (IBAction)cancelAction:(id)sender;
- (IBAction)restartAction:(id)sender;
- (IBAction)timeMode:(id)sender;
@end
int secondsCount;
int Den;
@implementation ViewController

- (void)viewDidLoad
{
    [self updateTime];
    [self timerRun];
    [super viewDidLoad];
    _stopWatch.hidden=NO;
    _timeModeButton.hidden=NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)updateTime{
    [updateTimer invalidate];
    updateTimer= nil;
    currentTime= [NSDate date];
    NSDateFormatter *timeFomatter=[[NSDateFormatter alloc]init];
    [timeFomatter setTimeStyle:NSDateFormatterMediumStyle];
    _counter.text= [timeFomatter stringFromDate:currentTime];
    updateTimer=[NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(updateTime) userInfo:nil repeats:YES];
}

-(void)timerRun{
    secondsCount+=1;
    int minutes= secondsCount/600;
    int seconds= (secondsCount/10)%60;
    int fraction=secondsCount%10;
    NSString *timeOutput = [NSString stringWithFormat:@"%02d:%02d.%2d",minutes,seconds, fraction];
    _countdown.text=timeOutput;
    
}
//Start
- (IBAction)startAction:(id)sender {
    secondsCount=0;
    timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(timerRun) userInfo:nil repeats:YES];
    _startButton.hidden=YES;
    _stopButton.hidden=NO;
    _pauseButton.hidden=NO;
    
   
}
//Stop
- (IBAction)cancelAction:(id)sender {
    [timer invalidate];
    secondsCount=0;
    _countdown.text=[NSString stringWithFormat:@"00:00.0%i",secondsCount];
    _pauseButton.hidden=YES;
    _startButton.hidden=NO;
    _stopButton.hidden=NO;
    
    
}
//Pause
- (IBAction)restartAction:(id)sender {
    [timer invalidate];
    _startButton.hidden=NO;
    _stopButton.hidden=NO;
    _pauseButton.hidden=NO;
    
}

- (IBAction)timeMode:(id)sender {
    timer=[NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(countTimeDown) userInfo:nil repeats:YES];
    
    _stopWatch.hidden=YES;
    _timeModeButton.hidden=NO;
    
}
-(void) countTimeDown{
    Den=Den-1;
    _timeDown.text=[NSString stringWithFormat:@"%i",Den];
}
@end
