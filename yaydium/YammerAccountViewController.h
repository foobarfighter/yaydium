//
//  AIYammerAccountViewController.h
//  yaydium
//
//  Created by bremeika on 1/3/14.
//
//

#import <AdiumLibpurple/PurpleAccountViewController.h>

@interface YammerAccountViewController : PurpleAccountViewController

@property (assign) IBOutlet NSTextField *textField_OAuthToken;
@property (assign) IBOutlet NSButton *button_OAuthConnect;

@end
