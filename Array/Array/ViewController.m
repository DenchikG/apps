//
//  ViewController.m
//  Array
//
//  Created by Denys Gryganskyi on 9/24/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"
#import "EditViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.array=[[NSMutableArray alloc]init];

}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [_array count];
}
-(UITableViewCell *)tableView:(UITableView *)tv cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tv dequeueReusableCellWithIdentifier:@"abc"];
    if (!cell) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"abc"];
        cell.textLabel.textColor=[UIColor redColor];
    }
        cell.textLabel.text=_array[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    EditViewController *editViewController=[[EditViewController alloc]init];
    editViewController.delegate=self;
    editViewController.index=indexPath.row;
    editViewController.passedText=_array[indexPath.row];
    [self.navigationController pushViewController:editViewController animated:YES];
    
}
- (IBAction)showTextButtonPressed:(id)sender {
       // self.label.text=@"";
        [self.array addObject:self.textField.text];
    [_tableView reloadData ];
    [_textField resignFirstResponder];
       NSLog(@"%@", self.array);

    
    //fast enumeration through the array
   /* for (NSString *string in _array) {
        
    NSString *newString=[NSString stringWithFormat:@"%@",string];
        
    _label.text=[_label.text stringByAppendingString:newString];
        
    }
    _textField.text=nil;*/
    
    //or we could write _array,and thats would be the same
    
}
-(void)editViewController:(id)evc didEdit:(NSString *)text index:(int)index{
    _array[index]=text;
    [_tableView reloadData];
    [self.navigationController popViewControllerAnimated:YES];
    
}
@end
