//
//  ViewController.m
//  properties
//
//  Created by Denys Gryganskyi on 9/19/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *myTextField;

    __weak IBOutlet UILabel *myLabel;
    __weak IBOutlet UITextField *myTextField2;
    __weak IBOutlet UILabel *myLabel2;
    
    
    Person *person;
    Person *person2;
}
- (IBAction)buttonPressed:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    person=[[Person alloc]init];
    person2=[[Person alloc]init];
    
    person.salary= 10000;
    person2.salary=15000;
    
    person.name=@"Spray";
    myLabel.text= person.name;
    
    NSLog(@"The salary of first person is %f",person.salary);
    NSLog(@"The salary of second person is %f",person2.salary);
    
    
    NSLog(@"The netsalary of first person is %f",person.netsalary);
    NSLog(@"The netsalary of second person is %f",person2.netsalary);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender {
    if (sender.tag==1) {
        person.name= myTextField.text;
        myLabel.text= person.name;
    }else{
    person2.name= myTextField2.text;
    myLabel2.text= person2.name;
    }
}
@end
