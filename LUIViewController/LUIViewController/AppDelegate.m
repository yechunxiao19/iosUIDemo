//
//  AppDelegate.m
//  LUIViewController
//
//  Created by OranWu on 13-1-4.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "AppDelegate.h"
#import "MyFirstViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    //*******************************************************************************
    //上一个DEMO我们已经学会了怎样用代码在 window 上添加 view 了，但是在一般的工程中，我们基本不会在当前类里管理我们的视图。
    //这里我们继续学习 怎样在UIWindow上添加 UIViewController（视图控制器）
    //*******************************************************************************
    
    //创建 MyFirstViewController
    //这里我创建的是 MyFirstViewController。你可以创建你的XXXViewController
    //*******************************************************************************
    //首先我们继承UIViewController 创建我们自己的 ViewController
    //1、鼠标定位到 左侧 LUIViewController 文件组上
    //2、右键-》New File
    //3、选择Cocoa Touch 栏目下的 Objective-C Class 点击next
    //4、填好类名 这里我写的是 MyFirstViewController， subclass of 为 UIViewController
    //5、选择好要存放文件的文件夹 Create
    //*******************************************************************************
    
    //添加 MyFirstViewController
    //*******************************************************************************
    //引入头文件 #import "MyFirstViewController.h"，我们就可以使用我们的类了。第10行
    //以下两种实例化方式都可以，任选一种用之
    //MyFirstViewController *viewController = [[MyFirstViewController alloc] init];
    
    //由于我们没有nib文件，所以我们这里用 initWithNibName:nil bundle:nil 初始化
    MyFirstViewController *viewController = [[MyFirstViewController alloc] initWithNibName:nil bundle:nil];
    
    //*******************************************************************************
    //这里我们可以把 viewController 设为self.window 的rootViewController
    //在setRootViewController里会自动帮我们把viewController.view 添加到 self.window 上
    self.window.rootViewController = viewController;
    //*******************************************************************************
    //我们的视图控制器 viewController 顾名思义，他也是有视图部分的 就是它的属性 view
    //所以我们也可以手动把 viewController.view 添加到 self.window 上, 注释掉 46行 开启 49行
    //[self.window addSubview:viewController.view];
    //*******************************************************************************
    
    //*******************************************************************************
    //编译运行 你会发现我们的视图是绿色的，没错，是我在 MyFirstViewController.m文件 的视图加载时干的
    //到这里你已经学会了创建 并添加 UIViewController 了
    //下一个DEMO我们继续学习如何在 UIViewController中加载 UIView UIImageView(一幅图片) UILabel（文字标签）
    //*******************************************************************************
    
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
