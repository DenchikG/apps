//
//  ViewController.m
//  StartUp
//
//  Created by Denys Gryganskyi on 9/19/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"
#import "Startup.h"
#import "Person.h"
#import "Manager.h"
#import "employee.h"
@interface ViewController ()
{
    Manager *boss;
    employee *projectManager;
    employee *coder;
    employee *designer;
};
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    boss=[[Manager alloc]init];
    projectManager=[[employee alloc]init];
    coder=[[employee alloc]init];
    designer=[[employee alloc]init];
    
    boss.name=@"Denys";
    boss.email=@"boss@ukr.com";
    boss.age=55;
    projectManager.name=@"Steven";
    projectManager.email=@"steve@gmail.com";
    projectManager.age=35;
    coder.name=@"Jay";
    coder.email=@"jay@jahoo.com";
    coder.age=25;
    designer.name=@"Kat";
    designer.email=@"katvocal@gmail.com";
    designer.age=27;
    
    NSLog(@"The age of my boss is %i",boss.age);
    
    Person *copyPerson=[[Person alloc]init];
    copyPerson=[projectManager copy];
    NSLog(@"The copyreson name is %@",copyPerson.name);
    
   Person *newPerson=[[Person alloc]initWithPerson:coder];
    NSLog(@"The new person name is %@",newPerson.name);
    
    NSLog(@"The boss name is %@ and his email is %@, the project Manager name is %@ and his email is %@, the coder name is %@ his email is %@, the designer name is %@ and her email is %@",boss.name,boss.email, projectManager.name,projectManager.email, coder.name,coder.email, designer.name,designer.email);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
