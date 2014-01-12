//
//  PurpleYammerAccount.m
//  yaydium
//
//  Created by bremeika on 1/2/14.
//
//

#import "PurpleYammerAccount.h"
#import <prplyammer.h>

@interface PurpleYammerAccount()
@property (nonatomic, copy) NSString *oAuthToken;
@end

@implementation PurpleYammerAccount

@synthesize oAuthToken;

- (void)configurePurpleAccount
{
  [super configurePurpleAccount];
	purple_account_set_username(account, self.purpleAccountName);
  purple_account_set_password(account, "thisdoesnotmatter");
  purple_account_set_string(account, "oauth_token", [oAuthToken UTF8String]);
}

- (const char*)protocolPlugin {
  return YAMMER_PLUGIN_ID;
}

/* Specify a host for network-reachability-code purposes */
- (NSString *)host
{
	return @"www.yammer.com";
}

- (void)requestYammerAuthorization:(NSString*) token
{
  /*
   TODO:
   
   This is where we will display the Yammer Oauth Dialog, but for now we will
   just assume that this worked and our token is good. In the facebook plugin
   the OauthWebViewController is actually calling this stuff.
  */
  [self didSucceedWithToken: token];
}

- (void)didSucceedWithToken:(NSString *)token
{
  [self setOAuthToken:token];
  [self connect];
}

@end
