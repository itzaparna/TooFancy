//
//  BRAppDelegate.m
//  TooFancyTabs
//
//  Created by Aparna Deshpande on 4/7/14.
//  Copyright (c) 2014 Aparna Deshpande. All rights reserved.
//

#import "BRAppDelegate.h"

#import "BRTabBarContainerViewController.h"

@implementation BRAppDelegate

@synthesize window;
@synthesize tabBarController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.tabBarController = [[BRTabBarContainerViewController alloc] init];
    [self.window addSubview:[self.tabBarController view]];
    [self.window makeKeyAndVisible];

    return YES;
}

- (void)dealloc {
	[self.tabBarController release];
	[self.window release];
	[super dealloc];
}

@end
