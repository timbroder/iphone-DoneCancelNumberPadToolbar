//
//  ApplyCancelNumberPadUIToolbar.m
//
//  Created by Timothy Broder on 8/17/12.
//
//

#import "DoneCancelNumberPadToolbar.h"

@implementation DoneCancelNumberPadToolbar

@synthesize delegate;

- (id) initWithTextField:(UITextField *)aTextField
{
    self = [super initWithFrame:CGRectMake(0, 0, 320, 50)];
    if (self) {
        textField = aTextField;
        self.barStyle = UIBarStyleBlackTranslucent;
        self.items = [NSArray arrayWithObjects:
                      [[UIBarButtonItem alloc]initWithTitle:@"Cancel"
                                                      style:UIBarButtonItemStyleBordered
                                                     target:self
                                                     action:@selector(cancelNumberPad)],
                      [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                                   target:nil action:nil],
                      [[UIBarButtonItem alloc]initWithTitle:@"Done"
                                                      style:UIBarButtonItemStyleDone
                                                     target:self
                                                     action:@selector(doneWithNumberPad)],
                      nil];
        [self sizeToFit];
        
    }
    return self;
}

-(void)cancelNumberPad
{
    [textField resignFirstResponder];
    textField.text = @"";
    [self.delegate doneCancelNumberPadToolbarDelegate:self didClickCancel:textField];
}

-(void)doneWithNumberPad
{
    [textField resignFirstResponder];
    [self.delegate doneCancelNumberPadToolbarDelegate:self didClickDone:textField];
}
@end

@property (nonatomic, weak) id <DoneCancelNumberPadToolbarDelegate> delegate;

- (id) initWithTextField:(UITextField *)textField;

@end