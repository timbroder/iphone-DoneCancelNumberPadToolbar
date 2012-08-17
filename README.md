iphone-DoneCancelNumberPadToolbar
=================================

Adds a Done and Cancel buttons to an iPhone Number Pad

Sample usage:
UITextField *weightTextField;
UIToolbar* numberToolbar = [[DoneCancelNumberPadToolbar alloc] initWithTextField:weightTextField];
weightTextField.inputAccessoryView = numberToolbar;