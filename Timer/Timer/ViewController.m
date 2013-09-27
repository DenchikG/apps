//
//  ViewController.m
//  Timer
//
//  Created by Denys Gryganskyi on 9/19/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end
int secondsCount;
@implementation ViewController

- (void)viewDidLoad
{
    [self updateTime];
    [self timerRun];
    [self countTimeDown];
    [super viewDidLoad];
    _stopWatch.hidden=NO;
    _timeModeButton.hidden=NO;
    self.modeLabel.font=[UIFont fontWithName:@"new font" size:17];

    
    
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
    _countdown.text=[NSString stringWithFormat:@"%02d:%02d.%2d",minutes,seconds, fraction];
    
}
-(void) countTimeDown{
    secondsCount=secondsCount-1;
    /*int hours=secondsCount/3600;
    int minutes= secondsCount/60;
    int seconds= (secondsCount/10)%60;
    //int fraction=%10;
    _countdown.text=[NSString stringWithFormat:@"%02d:%02d:%02d",hours,minutes,seconds];*/
   int hours = secondsCount / 3600;
   int minutes = (secondsCount % 3600) / 60;
   int seconds = (secondsCount % 3600) % 60;
        _countdown.text=[NSString stringWithFormat:@"%02d:%02d:%02d",hours,minutes,seconds];
    
    if (secondsCount<=0) {
        [timer invalidate];
    }
}
//Start

- (IBAction)startAction:(id)sender {
    
    //_modeLabel.text=@"Stop watch";
    
    
    if ([_modeLabel.text isEqualToString:@"Stop watch"]) {
        timer=[NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(timerRun) userInfo:nil repeats:YES];
    }else{
     timer=[NSTimer scheduledTimerWithTimeInterval:1.0f target:self selector:@selector(countTimeDown) userInfo:nil repeats:YES];
        secondsCount=@(_pickATime.countDownDuration).intValue;
        
       
    }
   
}

- (IBAction)stopWatch:(id)sender {
    _modeLabel.text=@"Stop watch";
    _pickATime.hidden=YES;
}


//Stop
- (IBAction)cancelAction:(id)sender {
    secondsCount=0;
    [timer invalidate];
    _countdown.text=[NSString stringWithFormat:@"00:00.0%i",secondsCount];
  
    
    
}
//Pause
- (IBAction)restartAction:(id)sender {
    [timer invalidate];//that will stop clock counter
 
    
}

- (IBAction)timeMode:(id)sender {
    //secondsCount=1800;
    
    
    _modeLabel.text=@"Timer Mode";
    _pickATime.hidden=NO;
    
}



@end
