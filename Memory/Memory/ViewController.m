//
//  ViewController.m
//  Memory
//
//  Created by Denys Gryganskyi on 9/26/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"
#import "MMObject.h"

@interface ViewController ()
{
    NSMutableArray *myArray;
    MMObject *myObject;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    myObject=[[MMObject alloc]init];
    myArray=[NSMutableArray arrayWithCapacity:10];
    [myArray retain];
    [super viewDidLoad];
    NSLog(@"Retain count is %i (%@)",[myObject retainCount],myObject);
    [myArray addObject:myObject];
    NSLog(@"Retain count is %i (%@)",[myObject retainCount],myObject);

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)memoryTest:(id)sender {
     NSLog(@"Retain count is %i (%@)",[myObject retainCount],myObject);
}

- (IBAction)removeAction:(id)sender {
    [myArray removeObject:myObject];
     NSLog(@"Retain count is %i (%@)",[myObject retainCount],myObject);
}
@end
