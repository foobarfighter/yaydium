//
//  YaydiumPlugin.m
//  yaydium
//
//  Created by bremeika on 1/2/14.
//
//

#import "YaydiumPlugin.h"
#import "PurpleYammerService.h"

@implementation YaydiumPlugin

- (void)installPlugin
{
    [PurpleYammerService registerService];
}

- (void)uninstallPlugin
{
    
}

- (void)loadLibpurplePlugin
{
    
}

- (void)installLibpurplePlugin
{
    
}

@end
