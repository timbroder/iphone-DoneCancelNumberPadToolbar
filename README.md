	iphone-DoneCancelNumberPadToolbar
=================================

Adds a Done and Cancel buttons to an iPhone Number Pad

Sample usage:

//In the view controller that's going ot use the component, put this in the header after the class being extended.
<DoneCancelNumberPadToolbarDelegate>
  
// Then instantiate your toolbar component where it's needed
DoneCancelNumberPadToolbar *toolbar = [[DoneCancelNumberPadToolbar alloc] initWithTextField:textField];
toolbar.delegate = self;
textField.inputAccessoryView = toolbar;
  
// Finally, implement the following two delegate methods
  
#pragma mark - DoneCancelNumberpadToolbar delegate
-(void)doneCancelNumberPadToolbarDelegate:(DoneCancelNumberPadToolbar *)controller didClickDone:(UITextField *)textField
{
    NSLog(@"%@", textField.text);
}
  
-(void)doneCancelNumberPadToolbarDelegate:(DoneCancelNumberPadToolbar *)controller didClickCancel:(UITextField *)textField
{
    NSLog(@"Canceled: %@", [textField description]);
}