//
//  BRAppDelegate.h
//  TooFancyTabs
//
//  Created by Aparna Deshpande on 4/7/14.
//  Copyright (c) 2014 Aparna Deshpande. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BRTabBarContainerViewController;

@interface BRAppDelegate : UIResponder <UIApplicationDelegate>

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) BRTabBarContainerViewController *tabBarController;

@end
