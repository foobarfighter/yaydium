//
//  PurpleYammerAccount.h
//  yaydium
//
//  Created by bremeika on 1/2/14.
//
//

#import <Cocoa/Cocoa.h>
#import <AdiumLibpurple/CBPurpleAccount.h>

@interface PurpleYammerAccount : CBPurpleAccount {
  NSString *oAuthToken;
}

- (void)requestYammerAuthorization:(NSString*) token;
- (void)didSucceedWithToken:(NSString *)token;

@end
