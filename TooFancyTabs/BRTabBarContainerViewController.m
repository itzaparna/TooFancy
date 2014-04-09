//
//  BRTabBarController.m
//  TooFancyTabs
//
//  Created by Aparna Deshpande on 4/7/14.
//  Copyright (c) 2014 Aparna Deshpande. All rights reserved.
//

#import "BRTabBarContainerViewController.h"

#import "BRWebViewController.h"

@interface BRTabBarContainerViewController ()

@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end

@implementation BRTabBarContainerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.tabBarController.hidesBottomBarWhenPushed = YES;
    [self.view addSubview:self.tabBarController.view];
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    if ([viewController class] != NSClassFromString(@"BRTableViewController")) {
        BRWebViewController *webViewController = [[BRWebViewController alloc] init];
        [self.navigationController presentViewController:webViewController
                                                animated:YES
                                              completion:nil];
    }
}

@end

