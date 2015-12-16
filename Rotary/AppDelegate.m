//
//  AppDelegate.m
//  Rotary
//
//  Created by oscar on 15/12/15.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import "AppDelegate.h"

#import "ORYindaoViewController.h"
#import "ORHomeViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self showYindaoViewController];
    
    return YES;
}

/// 显示主页
- (void)showHomeViewController{
    ORHomeViewController *vc = [[ORHomeViewController alloc] init];
    self.window.rootViewController = vc;
}

/// 显示引导页
- (void)showYindaoViewController{
    ORYindaoViewController *vc = [[ORYindaoViewController alloc] init];
    self.window.rootViewController = vc;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self showHomeViewController];
    });
}

@end
