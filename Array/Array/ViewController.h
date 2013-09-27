//
//  ViewController.h
//  Array
//
//  Created by Denys Gryganskyi on 9/24/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EditViewController.h"

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource,EditViewControllerDelegate>
@property (strong,nonatomic) NSMutableArray *array;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)showTextButtonPressed:(id)sender;

@end
