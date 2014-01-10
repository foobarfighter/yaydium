//
//  YaydiumPlugin.m
//  yaydium
//
//  Created by bremeika on 1/2/14.
//
//

#import "YaydiumPlugin.h"
#import "PurpleYammerService.h"
#import <prplyammer.h>

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
  purple_init_yammer_plugin();
}

- (void)installLibpurplePlugin
{
    
}

@end
