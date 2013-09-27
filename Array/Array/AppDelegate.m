//
//  AppDelegate.m
//  Array
//
//  Created by Denys Gryganskyi on 9/24/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //that will show the title of view controller
    self.navigationController=[[UINavigationController alloc]initWithRootViewController:self.window.rootViewController];
    self.window.rootViewController=self.navigationController;
    return YES;
}
							


@end
