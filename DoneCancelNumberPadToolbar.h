//
//  ApplyCancelNumberPadUIToolbar.h
//
//  Created by Timothy Broder on 8/17/12.
//  Based on http://stackoverflow.com/a/11382326/647343 by Luda
//
//

#import <UIKit/UIKit.h>

@interface DoneCancelNumberPadToolbar : UIToolbar
{
    UITextField* textField;
}
- (id) initWithTextField:(UITextField *)textField;
@end
