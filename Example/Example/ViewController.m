//
//  ViewController.m
//  Example
//
//  Created by Tim on 11/22/12.
//  Copyright (c) 2012 broderboy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize inputExampleTextField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	DoneCancelNumberPadToolbar *toolbar = [[DoneCancelNumberPadToolbar alloc] initWithTextField:inputExampleTextField];
    toolbar.delegate = self;
    inputExampleTextField.inputAccessoryView = toolbar;
}

-(void)doneCancelNumberPadToolbarDelegate:(DoneCancelNumberPadToolbar *)controller didClickDone:(UITextField *)textField
{
    NSLog(@"%@", textField.text);
}

-(void)doneCancelNumberPadToolbarDelegate:(DoneCancelNumberPadToolbar *)controller didClickCancel:(UITextField *)textField
{
    NSLog(@"Canceled: %@", [textField description]);
}

@end
