//
//  AppDelegate.m
//  LUITabBarViewController
//
//  Created by OranWu on 13-1-6.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "AppDelegate.h"
#import "LLViewController.h"
#import "MMViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //*******************************************************************************
    //在上个Demo中我们学习 UIViewController的两种跳转方式 导航和展示
    //这里我们学习 UITabBarViewController 的使用
    //*******************************************************************************
    
    
    LLViewController *LLVC = [[LLViewController alloc] init];
    MMViewController *MMVC = [[MMViewController alloc] init];
    
    //设置LLVC MMVC 各自在第几个Tab上 和tab的图标
    //*******************************************************************************
//    UITabBarSystemItemMore,
//    UITabBarSystemItemFavorites,
//    UITabBarSystemItemFeatured,
//    UITabBarSystemItemTopRated,
//    UITabBarSystemItemRecents,
//    UITabBarSystemItemContacts,
//    UITabBarSystemItemHistory,
//    UITabBarSystemItemBookmarks,
//    UITabBarSystemItemSearch,
//    UITabBarSystemItemDownloads,
//    UITabBarSystemItemMostRecent,
//    UITabBarSystemItemMostViewed,
    
    LLVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemContacts tag:0];
    MMVC.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:1];
    //*******************************************************************************

    //把LLVC MMVC 设置成LLNav MMNav 的根VC，这样就可以在LLVC MMVC中使用pushViewController的方法了
    //*******************************************************************************
    UINavigationController *LLNav = [[UINavigationController alloc] initWithRootViewController:LLVC];
    UINavigationController *MMNav = [[UINavigationController alloc] initWithRootViewController:MMVC];
    
    //把LLNav MMNav生成一个数组，赋值给tabbarVC.viewControllers
    UITabBarController *tabbarVC = [[UITabBarController alloc] init];
    tabbarVC.viewControllers = [NSArray arrayWithObjects:LLNav, MMNav, nil];
    
    //设置tabbarVC 为winddow的rootViewController
    self.window.rootViewController = tabbarVC;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
