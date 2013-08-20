//
//  AppDelegate.m
//  LUIView
//
//  Created by OranWu on 13-1-4.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    //*******************************************************************************
    //在上一个Demo中我们了解了基本的UIWindow的创建。下面我们继续学习如何在我们的UIWindow上添加 UIView
    //*******************************************************************************
    
    //*******************************************************************************
    //实例化一个UIView 左上角为坐标原点
    UIView *myView = [[UIView alloc] initWithFrame:CGRectMake(10/* x */, 10/* y */, 200/* width */, 200/* height */)];
    //修改myView的背景色为红色
    myView.backgroundColor = [UIColor redColor];
    //把myView添加到我们的UIWindow self.window上 
    [self.window addSubview:myView];
    //*******************************************************************************
    
    //*******************************************************************************
    //编译运行 你会发现，还有个运营商信息、电池信息那一栏（状态栏），他们的高度为20 所以挡住了我们的UIView
    //你可以在这里修改myView的frame,也可以回到初始化myView的地方 25行 修改，随你。
    [myView setFrame:CGRectMake(10, 30, 200, 200)];
    //再次 编译运行，你可以看到 我们的view离 状态栏 也有10个像素了
    //*******************************************************************************
    
    //*******************************************************************************
    //编外篇 其实刚才我们还有一个选择，不修改myView的frame，而是隐藏状态栏。
//    [[UIApplication sharedApplication] setStatusBarHidden:TRUE];
    //*******************************************************************************
    
    //*******************************************************************************
    //到这里我们已经学会了怎样用代码在 window 上添加 view 了，但是在一般的工程中，我们基本不会在当前类里管理我们的视图。
    //下一个 Demo我们继续学习 怎样在UIWindow上添加 UIViewController（视图控制器）
    //*******************************************************************************

    // Override point for customization after application launch.
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
