//
//  ViewController.h
//  MyFavoriteThings
//
//  Created by Denys Gryganskyi on 9/24/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (strong,nonatomic) NSMutableArray *array;
- (IBAction)addButton:(id)sender;
- (IBAction)removeButton:(id)sender;
- (IBAction)reverseButton:(id)sender;

@end
