//
//  ViewController.m
//  webViewStrech
//
//  Created by Denys Gryganskyi on 9/23/13.
//  Copyright (c) 2013 Denys Gryganskyi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UISearchBarDelegate>
- (IBAction)goBack:(id)sender;
- (IBAction)goForward:(id)sender;
- (IBAction)searchAction:(id)sender;
@property (weak, nonatomic) IBOutlet UISearchBar *searchBar;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *forwardButton;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backwardButton;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)goAction:(id)sender;

@end

@implementation ViewController
NSURLRequest *request;
NSURL *url;
-(BOOL)textFieldShouldReturn:(UITextField *)text{
    [self.view endEditing:YES];
    url=[NSURL URLWithString:[ NSString stringWithFormat:@"%@",_searchBar.text]];
      request=[NSURLRequest requestWithURL:url];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    url= [NSURL URLWithString:@"http://www.google.com"];
    request=[NSURLRequest requestWithURL:url];
    
    [super viewDidLoad];
    _webView.delegate = self;
    _searchBar.delegate=self;
    [_webView loadRequest:request];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIWebViewDelegate;
-(void) webViewDidStartLoad:(UIWebView *)webView {
    [_activityIndicator startAnimating];
}

-(void) webViewDidFinishLoad:(UIWebView *)webView {
    NSLog(@"Finish loading");
    [_activityIndicator stopAnimating];
}

- (IBAction)goBack:(id)sender {
    if ([_webView canGoBack]) {
        [_webView goBack];
        [_forwardButton setEnabled:YES];
    }else{
        [_backwardButton setEnabled:NO];
    }
    }



- (IBAction)goForward:(id)sender {
        if ([_webView canGoForward]) {
        [_webView goForward];
            [_backwardButton setEnabled:YES];
    }else{
        [_forwardButton setEnabled:NO];
    }
}


   

- (IBAction)goAction:(id)sender {
}
- (IBAction)searchAction:(id)sender {
    [self.view endEditing:YES];
    url=[NSURL URLWithString:[NSString stringWithFormat: @"%@", _searchBar.text]];
    request=[NSURLRequest requestWithURL:url];
    [_webView loadRequest:request];
}
@end
