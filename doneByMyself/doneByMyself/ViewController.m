//
//  ViewController.m
//  doneByMyself
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
   /* CGRect buttonFrame =CGRectMake(10, 80, 100, 30);
    UIButton *button =[[UIButton alloc]initWithFrame:buttonFrame];
    [button setTitle:@"Button" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.view addSubview:button];*/
    UIButton *btn= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame= CGRectMake(20, 20, 200, 50);
    [btn setTitle:@"Change my Color" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    
    CGRect labelFrame= CGRectMake(100, 80, 100, 30);
    UILabel *label=[[UILabel alloc]initWithFrame:labelFrame];
    [label setText:@"ON"];
    [self.view addSubview:label];
    
    UIButton *butn= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    butn.frame= CGRectMake(100, 120, 100, 50);
    [butn setTitle:@"ON/OFF" forState:UIControlStateNormal];
    [butn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:butn];
    
    CGRect frame= CGRectMake(70.0, 200.0, 200.0, 10.0);
    UISlider *slider= [[UISlider alloc]initWithFrame:frame];
    
    slider.minimumValue=0.0;
    slider.maximumValue=1.0;
    [self.view addSubview:slider];
    
    CGRect lbelFrame= CGRectMake(10, 280, 20, 30);
    UILabel *lbel=[[UILabel alloc]initWithFrame:lbelFrame];
    [lbel setText:@"7"];
    [self.view addSubview:lbel];
    
    UITextField *tf =[[UITextField alloc]initWithFrame:CGRectMake(45, 280, 20, 20)];
    tf.text=@"+";
    [self.view addSubview:tf];
    
    UIButton *buton= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    buton.frame= CGRectMake(150, 280, 90, 30);
    [buton setTitle:@"Math" forState:UIControlStateNormal];
    [buton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:buton];
    
    CGRect lablFrame= CGRectMake(60, 280, 20, 30);
    UILabel *labl=[[UILabel alloc]initWithFrame:lablFrame];
    [labl setText:@"3"];
    [self.view addSubview:labl];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

@end
