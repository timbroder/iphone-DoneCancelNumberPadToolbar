Adds Done and Cancel buttons to an iPhone Number Pad

![example](http://d208tez5h4u8q2.cloudfront.net/wp-content/uploads/2012/08/Done-Cancel-Iphone.png)


### ViewController Header

Add the include, delegate, and textfield to your header file

``` objective-c
#import "DoneCancelNumberPadToolbar.h"

@interface ViewController : UIViewController <DoneCancelNumberPadToolbarDelegate>
@property (weak, nonatomic) IBOutlet UITextField *inputExampleTextField;
```

### ViewController

Attach the DoneCancelNumberPadToolbar to the textfield

``` objective-c
- (void)viewDidLoad
{
    [super viewDidLoad];
    DoneCancelNumberPadToolbar *toolbar = [[DoneCancelNumberPadToolbar alloc] initWithTextField:inputExampleTextField];
    toolbar.delegate = self;
    inputExampleTextField.inputAccessoryView = toolbar;
}
```

Use the delegate methods as needed

``` objective-c
-(void)doneCancelNumberPadToolbarDelegate:(DoneCancelNumberPadToolbar *)controller didClickDone:(UITextField *)textField
{
    NSLog(@"%@", textField.text);
}

-(void)doneCancelNumberPadToolbarDelegate:(DoneCancelNumberPadToolbar *)controller didClickCancel:(UITextField *)textField
{
    NSLog(@"Canceled: %@", [textField description]);
}
```

http://timbroder.com/2012/08/adding-done-and-cancel-buttons-to-an-ios-number-pad.html