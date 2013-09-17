//
//  UploadViewController.h
//  Part of the ASIHTTPRequest sample project - see http://allseeing-i.com/ASIHTTPRequest for details
//
//  Created by Ben Copsey on 31/12/2008.
//  Copyright 2008 All-Seeing Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>//importing library already written for us
#import "SampleViewController.h"//importing view Controller library to our file
@class ASIFormDataRequest;//name of the class 
//interface is what we have from the beggining
@interface UploadViewController : SampleViewController {
	
	ASIFormDataRequest *request;//*is a pointer is a memory where request is stored
	
	IBOutlet UIProgressView *progressIndicator;
	UITextView *resultView;
}

- (IBAction)performLargeUpload:(id)sender;//minus represents class or instance level method
- (IBAction)toggleThrottling:(id)sender;//declaring instance method by returning type IBAction, name of method is toggleThrottling,name of parameter is sender, and type of parameter is (id)

@property (retain, nonatomic) ASIFormDataRequest *request;//thats our behavior
@end
