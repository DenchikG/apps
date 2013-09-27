//
//  BoringViewController.m
//  Delegates
//
//  Created by Denys Gryganskyi on 9/23/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "BoringViewController.h"

@interface BoringViewController ()
- (IBAction)green:(id)sender;
- (IBAction)red:(id)sender;
- (IBAction)blue:(id)sender;
- (IBAction)yellow:(id)sender;
- (IBAction)textField:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textFieldDisplay;

@end

@implementation BoringViewController
@synthesize delegate;
@synthesize delegate2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(BOOL) textFieldShouldReturn:(UITextField *)textFieldDisplay{
[self.view endEditing:YES];

    if ([_textFieldDisplay.text isEqual:@"red"]) {
    [delegate changeColor:[UIColor redColor]];
    [delegate2 changeText:[NSString stringWithFormat:@"%@",_textFieldDisplay.text]];
    }   else if([_textFieldDisplay.text isEqual:@"blue"])
    {
    [delegate changeColor:[UIColor blueColor]];
    [delegate2 changeText:[NSString stringWithFormat:@"%@",_textFieldDisplay.text]];
    }
        else if([_textFieldDisplay.text isEqual:@"green"])
    {
    [delegate changeColor:[UIColor greenColor]];
    [delegate2 changeText:[NSString stringWithFormat:@"%@",_textFieldDisplay.text]];
    }
        else if([_textFieldDisplay.text isEqual:@"yellow"]) {
    [delegate changeColor:[UIColor yellowColor]];
    [delegate2 changeText:[NSString stringWithFormat:@"%@",_textFieldDisplay.text]];
    }else{
   
        [delegate2 changeText:[NSString stringWithFormat:@"%@",_textFieldDisplay.text]];}
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.textFieldDisplay.delegate=self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)green:(id)sender {
    [delegate changeColor:[UIColor greenColor]];
    [delegate2 changeText:@"green"];
}

- (IBAction)red:(id)sender {
    [delegate changeColor:[UIColor redColor]];
    [delegate2 changeText:@"red"];
}

- (IBAction)blue:(id)sender {
    [delegate changeColor:[UIColor blueColor]];
    [delegate2 changeText:@"blue"];
}

- (IBAction)yellow:(id)sender {
    [delegate changeColor:[UIColor yellowColor]];
    [delegate2 changeText:@"yellow"];
}

- (IBAction)textField:(id)sender {
    [delegate2 changeText:[NSString stringWithFormat:@"%@",_textFieldDisplay.text]];
    [self.view endEditing:YES];
}
@end
