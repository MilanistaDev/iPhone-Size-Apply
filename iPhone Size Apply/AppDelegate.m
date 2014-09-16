//
//  AppDelegate.m
//  iPhone Size Apply
//
//  Created by 麻生 拓弥 on 2014/09/16.
//  Copyright (c) 2014年 Takuya Aso. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    // Display sizes of iPhones are as follows.
    // iPhone 4S --> 3.5 inch(960×640)(480x320)
    // iPhone 5, 5c, 5s, iPod touch 5G --> 4 inch(Defaultにする=Main.storyboardにする)
    // iPhone 6 --> 4.7 inch(1334x750)(667x375)
    // iPhone 6 Plus --> 5.5 inch(1920×1080)downsampling<--(2208x1242)(736x414)
    
    // アプリ実行端末のディスプレイサイズの高さを取得
    CGRect display = [UIScreen mainScreen].bounds;
    
    // 取得ディスプレイに対応したStoryBoardをrootViewController(最初に表示されるもの)にする。
    if (display.size.height == 480) { // iPhone 4S の場合 (Unit is Point.)
        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Display_4S" bundle:nil];
        UIViewController* rootViewController = [storyboard instantiateInitialViewController];
        self.window.rootViewController = rootViewController;
        
    } else if (display.size.height == 667) { // iPhone 6 の場合
        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Display_6" bundle:nil];
        UIViewController* rootViewController = [storyboard instantiateInitialViewController];
        self.window.rootViewController = rootViewController;
        
    } else if (display.size.height == 736) { // iPhone 6 Plus の場合
        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Display_6Plus" bundle:nil];
        UIViewController* rootViewController = [storyboard instantiateInitialViewController];
        self.window.rootViewController = rootViewController;
    }
    
    // ディスプレイのポイント数などは以下参照
    // http://stackoverflow.com/questions/25755443/iphone-6-plus-resolution-confusion-xcode-or-apples-website
    
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
