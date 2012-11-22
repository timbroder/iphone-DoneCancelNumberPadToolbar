//
//  ViewController.h
//  Example
//
//  Created by Tim on 11/22/12.
//  Copyright (c) 2012 broderboy. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DoneCancelNumberPadToolbar.h"

@interface ViewController : UIViewController <DoneCancelNumberPadToolbarDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputExampleTextField;

@end
