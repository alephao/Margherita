#import "TermsViewController.h"

@interface TermsViewController ()
@end

@implementation TermsViewController
- (UIButton *)acceptTermsButton;
{
    if (!_acceptTermsButton) {
        _acceptTermsButton = [[UIButton alloc] initWithType: UIButtonTypeSystem];
    }
    return _acceptTermsButton;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    acceptTermsButton.translatesAutoresizingMaskIntoConstraints = false;
    [self.view addSubview:acceptTermsButton];

    [acceptTermsButton.widthAnchor constraintEqualToConstant:160].active = YES;
    [acceptTermsButton.heightAnchor constraintEqualToConstant:80].active = YES;
    [acceptTermsButton.centerXAnchor constraintEqualToAnchor:self.view.centerXAnchor].active = YES;
    [acceptTermsButton.centerYAnchor constraintEqualToAnchor:self.view.centerYAnchor].active = YES;
}

@end