//
//  AIYammerAccountViewController.m
//  yaydium
//
//  Created by bremeika on 1/3/14.
//
//

#import "YammerAccountViewController.h"
#import "PurpleYammerAccount.h"

@implementation YammerAccountViewController

@synthesize textField_OAuthToken, button_OAuthConnect;

- (NSView *)setupView
{
	return view_setup;
}

- (NSView *)optionsView
{
    return nil;
}

- (NSView *)privacyView
{
    return nil;
}

- (NSString *)nibName
{
    return @"YammerAccountView";
}

- (IBAction)changedPreference:(id)sender
{
	if (sender == button_OAuthConnect) {
    // TODO: This will actually be populated by the OauthView and requestYammerAuthorization
    // shouldn't take an arg
		[(PurpleYammerAccount *)account requestYammerAuthorization: [textField_OAuthToken stringValue] ];
		[button_OAuthConnect setEnabled:NO];
    
	} else
		[super changedPreference:sender];
}

@end
