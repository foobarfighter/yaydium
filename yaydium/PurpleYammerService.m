//
//  PurpleYammerService.m
//  yaydium
//
//  Created by bremeika on 1/2/14.
//
//

#import <AIUtilities/AIImageAdditions.h>
#import "PurpleYammerService.h"
#import "PurpleYammerAccount.h"
#import "YammerAccountViewController.h"

@implementation PurpleYammerService

//Account Creation
- (Class)accountClass{
	return [PurpleYammerAccount class];
}

- (AIAccountViewController *)accountViewController{
    return [YammerAccountViewController accountViewController];
}

- (DCJoinChatViewController *)joinChatView{
	return nil;
}

//Service Description
- (NSString *)serviceCodeUniqueID{
	return @"libpurple-yammer";
}

- (NSString *)serviceID{
	return @"yammer";
}

- (NSString *)serviceClass{
	return @"Yammer";
}

- (NSString *)shortDescription{
	return @"Yammer";
}

- (NSString *)longDescription{
	return @"Yammer";
}

- (AIServiceImportance)serviceImportance{
	return AIServicePrimary;
}

- (BOOL)canCreateGroupChats{
	return NO;
}

- (NSImage *)defaultServiceIconOfType:(AIServiceIconType)iconType
{
	if ((iconType == AIServiceIconSmall) || (iconType == AIServiceIconList)) {
		return [NSImage imageNamed:@"yaydium-small" forClass:[self class] loadLazily:YES];
	} else {
		return [NSImage imageNamed:@"yaydium" forClass:[self class] loadLazily:YES];
	}
}

//- (NSString *)pathForDefaultServiceIconOfType:(AIServiceIconType)iconType
//{
//	if ((iconType == AIServiceIconSmall) || (iconType == AIServiceIconList)) {
//		return [[NSBundle bundleForClass:[self class]] pathForImageResource:@"yaydium-small"];
//	} else {
//		return [[NSBundle bundleForClass:[self class]] pathForImageResource:@"yaydium"];
//	}
//}

@end
