//
//  ORBNimbusTableViewController.h
//  Rotary
//
//  Created by oscar on 15/12/16.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import "ORBTableViewController.h"

@interface ORBNimbusTableViewController : ORBTableViewController
<NIMutableTableViewModelDelegate>

/// tableView的数据源.
@property (strong, nonatomic) NIMutableTableViewModel *dataSource;

/// 用于cell点击, tableView的delegate事件传递等操作.
@property (strong, nonatomic, readonly) NITableViewActions *actions;

/// 重置actions,目的为了消除缓存.
- (void)resetActions;

@end
