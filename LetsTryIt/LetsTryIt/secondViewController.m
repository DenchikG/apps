//
//  secondViewController.m
//  LetsTryIt
//
//  Created by Denys Gryganskyi on 9/18/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "secondViewController.h"

@interface secondViewController ()

@end

@implementation secondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)presentSecondViewController:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
@end
