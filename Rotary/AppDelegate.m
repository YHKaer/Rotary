//
//  AppDelegate.m
//  Rotary
//
//  Created by oscar on 15/12/15.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    [self showHomeViewController];
    
    
    NSLog(@"hello world");
    
    
    return YES;
}

- (void)showHomeViewController{
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[UIViewController new]];
}

@end
