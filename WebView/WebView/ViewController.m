//
//  ViewController.m
//  WebView
//
//  Created by Denys Gryganskyi on 9/23/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UIWebView *webView;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    NSURLRequest *request;
    NSURL *url;
    url= [NSURL URLWithString:@"http://www.google.com"];
    request=[NSURLRequest requestWithURL:url];
    
    
    
    [super viewDidLoad];
    webView.delegate = self;
    [webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)webViewDidFinishLoad:(UIWebView *)webView{
    NSLog(@"Finish Loading");
}
@end
