//
//  ORBViewController.m
//  Rotary
//
//  Created by oscar on 15/12/16.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import "ORBViewController.h"

@interface ORBViewController ()

@end

@implementation ORBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if (!kIsIOS7Lower)
    {
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
}
@end
