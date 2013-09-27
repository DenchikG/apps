//
//  ViewController.m
//  MyFavoriteThings
//
//  Created by Denys Gryganskyi on 9/24/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _array=[[NSMutableArray alloc]init];
    _textView.text=@"";
}

- (IBAction)addButton:(id)sender {
    [_array addObject:_textField.text];
    [_textView reloadInputViews];
    [_textField resignFirstResponder];
    _textView.text=@"";
    for (NSString *string in _array) {
        NSString *newString=[NSString stringWithFormat:@"\n%@",string];
        _textView.text=[_textView.text stringByAppendingString:newString];
    }
    _textField.text=nil;
    NSLog(@"%@",_array);
}

- (IBAction)removeButton:(id)sender {
    [_array removeLastObject];
    [_textView reloadInputViews];
    [_textField resignFirstResponder];
    _textView.text=@"";
    for (NSString *string in _array) {
        NSString *newString=[NSString stringWithFormat:@"\n%@",string];
        _textView.text=[_textView.text stringByAppendingString:newString];
    }
    _textField.text=nil;
    NSLog(@"%@",_array);
}

- (IBAction)reverseButton:(id)sender {
    NSMutableArray *array2=[[NSMutableArray alloc]init];
    array2 =[[[_array reverseObjectEnumerator]allObjects]mutableCopy];
    [_textView reloadInputViews];
    [_textField resignFirstResponder];
    _textView.text=@"";
   for (NSString *string in array2) {
        [[_array reverseObjectEnumerator]allObjects];
        NSString *newString=[NSString stringWithFormat:@"\n%@",string];
        _textView.text=[_textView.text stringByAppendingString:newString];
   }
    _textField.text=nil;
    NSLog(@"%@",_array);
}

@end
