//
//  AppDelegate.m
//  LWindow
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
    //上面这句是创建一个UIWindow实例，Frame为“[[UIScreen mainScreen] bounds]”的返回 CGRect
    //在这里我们可以用 CGRectMake(0, 0, 100, 100) 自己重新定制UIWindow 的 Frame
//    self.window = [[UIWindow alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    //*******************************************************************************

    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor redColor];
    //*******************************************************************************
    //上面这句是修改self.window 这个实例的 backgroundColor 属性,
    //我们可以把它改成红色
    //self.window.backgroundColor = [UIColor redColor];
    //或者使用RBG颜色 r g b 取值区间为 0~1
    //self.window.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:1];
    //或者使用图片
    //UIImage *backImage = [UIImage imageNamed:@"background"];
    //self.window.backgroundColor = [UIColor colorWithPatternImage:backImage];
    //*******************************************************************************
    
    //*******************************************************************************
    //另外 按住command 鼠标点击 UIWindow 可以看到，UIWindow是继承自UIView，也就是说你看到的UIWindow本质也是一个UIView
    //所以，UIWindow有UIView的一切属性，可以自己修改看看效果
    //*******************************************************************************
    
    //*******************************************************************************
    //本Demo结束，以后如果有类之间的跳转，我会给出跳转提示
    //*******************************************************************************
    
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
