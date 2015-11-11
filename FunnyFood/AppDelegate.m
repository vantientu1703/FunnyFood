//
//  AppDelegate.m
//  FunnyFood
//
//  Created by Văn Tiến Tú on 11/11/15.
//  Copyright © 2015 ZooStudio. All rights reserved.
//

#import "AppDelegate.h"
#import "MainScreen.h"
#import "SaleOffScreen.h"
#import "AddressScreen.h"
#import "AboutTabbar.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    MainScreen *mainScreen = [[MainScreen alloc] initWithNibName:@"MainScreen" bundle:nil];
    mainScreen.title = @"Funny Food";
    UINavigationController *navMainScreen = [[UINavigationController alloc] initWithRootViewController:mainScreen];
    navMainScreen.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Menu"
                                                             image:[UIImage imageNamed:@"Menu2.png"]
                                                     selectedImage:[UIImage imageNamed:@"Menu2.png"]];
    
    SaleOffScreen *saleOffScreen = [[SaleOffScreen alloc] init];
    saleOffScreen.title = @"Sale Off";
    UINavigationController *navSaleOff = [[UINavigationController alloc] initWithRootViewController:saleOffScreen];
    navSaleOff.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Sale Off"
                                                          image:[UIImage imageNamed:@"saleoff2.png"]
                                                  selectedImage:[UIImage imageNamed:@"saleoff2.png"]];
    
    AddressScreen *addressScreen = [[AddressScreen alloc] init];
    addressScreen.title = @"Address";
    UINavigationController *navAddress = [[UINavigationController alloc] initWithRootViewController:addressScreen];
    navAddress.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Address"
                                                          image:[UIImage imageNamed:@"address2.png"]
                                                  selectedImage:[UIImage imageNamed:@"address2.png"]];
    
    AboutTabbar *aboutTabbar = [[AboutTabbar alloc] init];
    aboutTabbar.title = @"About";
    UINavigationController *navAbout = [[UINavigationController alloc] initWithRootViewController:aboutTabbar];
    navAbout.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"About"
                                                        image:[UIImage imageNamed:@"about2.png"]
                                                selectedImage:[UIImage imageNamed:@"about2.png"]];
    
    UITabBarController *tabBarViewController = [[UITabBarController alloc] init];
    tabBarViewController.viewControllers = @[navMainScreen,navSaleOff,navAddress,navAbout];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = tabBarViewController;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
