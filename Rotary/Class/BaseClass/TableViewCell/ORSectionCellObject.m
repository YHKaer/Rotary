//
//  ORSectionCellObject.m
//  Rotary
//
//  Created by oscar on 15/12/16.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import "ORSectionCellObject.h"

@implementation ORSectionCellObject

+ (ORSectionCellObject *)objectWithHeight:(CGFloat)cellHeight
                          backgroundColor:(UIColor *)backgroundColor
{
    ORSectionCellObject *cellObject = [ORSectionCellObject objectWithTitle:nil];
    cellObject.cellHeight = cellHeight;
    cellObject.backgroundColor = backgroundColor;
    cellObject.isHiddenSeparateLine = YES;
    return cellObject;
}

-(Class)cellClass
{
    return [ORSectionCell class];
}

@end

@implementation ORSectionCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        
    }
    return self;
}

- (BOOL)shouldUpdateCellWithObject:(ORSectionCellObject *)object
{
    [super shouldUpdateCellWithObject:object];
    self.contentView.backgroundColor = object.backgroundColor;
    return YES;
}

+(CGFloat)heightForObject:(ORSectionCellObject *)object atIndexPath:(NSIndexPath *)indexPath tableView:(UITableView *)tableView
{
    return object.cellHeight;
}

@end
