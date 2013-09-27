//
//  ViewController.m
//  ViewsAndTouches
//
//  Created by Denys Gryganskyi on 9/26/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"
#import "MyView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    for (UIView* view in self.view.subviews) {
        if ([view isKindOfClass:[MyView class]]) {
            MyView* myview=(MyView*)view;
            myview.delegate=self;
        }
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



-(void)didChooseView: (UIView *)view{
    
        static NSInteger i = 0;
        NSArray *colors = [NSArray arrayWithObjects:[UIColor redColor], [UIColor greenColor], [UIColor blueColor], [UIColor whiteColor], [UIColor blackColor], nil];
        
        if(i >= [colors count]) {
            i = 0;
        }
        
        [UIView animateWithDuration:2.0f animations:^{
            self.view.backgroundColor = [colors objectAtIndex:i];
        } completion:^(BOOL finished) {
            ++i;
            //[self doBackgroundColorAnimation];
        }
         ];
    
    NSLog(@"Tag = %i",view.tag);
}

@end
