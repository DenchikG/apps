//
//  ViewController.m
//  Delegates
//
//  Created by Denys Gryganskyi on 9/23/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"
#import "BoringViewController.h"
@interface ViewController ()
{
    BoringViewController *boringViewController;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    boringViewController=[[BoringViewController alloc]initWithNibName:nil bundle:nil];
    boringViewController.delegate=self;
    [self.view addSubview:boringViewController.view];
    boringViewController.delegate2=self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark ColorDelegate
-(void)changeColor:(UIColor *)color{
    self.view.backgroundColor=color;
}
-(void)changeText:(NSString *)text{
    _label.text=text;
}

@end
