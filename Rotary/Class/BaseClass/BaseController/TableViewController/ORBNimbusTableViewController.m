//
//  ORBNimbusTableViewController.m
//  Rotary
//
//  Created by oscar on 15/12/16.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import "ORBNimbusTableViewController.h"

@interface ORBNimbusTableViewController ()

@property (strong, nonatomic) NITableViewActions *actions;

@end

@implementation ORBNimbusTableViewController

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.actions = [[NITableViewActions alloc] initWithTarget:self];
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];
    
    self.tableView.delegate = [self.actions forwardingTo:self];
}

- (void)resetActions{
    self.actions = [[NITableViewActions alloc] initWithTarget:self];
    self.tableView.delegate = [self.actions forwardingTo:self];
}

/// 设置数据源, 将数据源设置到TableView的dataSource
- (void)setDataSource:(NIMutableTableViewModel *)dataSource{
    if (_dataSource != dataSource) {
        _dataSource = dataSource;
        self.tableView.dataSource = _dataSource;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return [NICellFactory tableView:tableView heightForRowAtIndexPath:indexPath model:self.dataSource];
}

- (UITableViewCell *)tableViewModel: (NITableViewModel *)tableViewModel
                   cellForTableView: (UITableView *)tableView
                        atIndexPath: (NSIndexPath *)indexPath
                         withObject: (id)object
{
    return [[NICellFactory class] tableViewModel:tableViewModel cellForTableView:tableView atIndexPath:indexPath withObject:object];
}

- (BOOL)tableViewModel:(NIMutableTableViewModel *)tableViewModel
         canEditObject:(id)object
           atIndexPath:(NSIndexPath *)indexPath
           inTableView:(UITableView *)tableView
{
    return NO;
}

- (UITableViewRowAnimation)tableViewModel:(NIMutableTableViewModel *)tableViewModel
              deleteRowAnimationForObject:(NICellObject *)object
                              atIndexPath:(NSIndexPath *)indexPath
                              inTableView:(UITableView *)tableView
{
    return UITableViewRowAnimationNone;
}

- (void)dealloc{
    self.dataSource = nil;
    self.actions = nil;
    self.tableView.dataSource = nil;
}

@end
