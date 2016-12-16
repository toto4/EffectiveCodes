//
//  AppDelegate.m
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/16.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import "AppDelegate.h"
#import <Bugly/Bugly.h>
#import <JSPatchPlatform/JSPatch.h>

NSString *const kJSPatchAppKey = @"32a60f458dd928c4";
NSString *const kBublyAppId = @"688fed51d9";


@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    void sam_setupConfigApp();
    sam_setupConfigApp();
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    self.window = window;
    
    [window makeKeyAndVisible];
    
    
    UIViewController *viewController = [[UIViewController alloc] init];
    window.rootViewController = viewController;
    
    window.backgroundColor = viewController.view.backgroundColor = [UIColor whiteColor];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



#pragma mark - 

void sam_setupConfigApp()
{
    // JSPatch
    [JSPatch startWithAppKey:kJSPatchAppKey];
    [JSPatch sync];
    
    // Bugly
    [Bugly startWithAppId:kBublyAppId];
    
}





@end
