//
//  EditViewController.m
//  Array
//
//  Created by Denys Gryganskyi on 9/25/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "EditViewController.h"

@interface EditViewController ()

@end

@implementation EditViewController

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
    _textField.text=_passedText;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)endEditingWithButton:(id)sender {
    [_delegate editViewController:self didEdit:_textField.text index:_index];
    
}
@end
