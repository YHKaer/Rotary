//
//  ORCellCatalog.h
//  Rotary
//
//  Created by oscar on 15/12/16.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ORSubtitleCellObject : NISubtitleCellObject <NSCopying>

/// 分割线edgeInsets 默认是 UIEdgeInsetsMake(0, 10, 0, -10)，注意！！！ top设置无效果
@property (nonatomic, assign) UIEdgeInsets lineEdgeInsets;

/// 是否显示分割线 default is NO(显示)
@property (nonatomic, assign) BOOL isHiddenSeparateLine;

@end

@interface ORTitleCellObject : NITitleCellObject <NSCopying>

/// 分割线edgeInsets 默认是 UIEdgeInsetsMake(0, 10, 0, -10)，注意！！！ top设置无效果
@property (nonatomic, assign) UIEdgeInsets lineEdgeInsets;

/// 是否显示分割线 default is YES(显示)
@property (nonatomic, assign) BOOL isHiddenSeparateLine;

@end

@interface ORTextCell : NITextCell

@property (nonatomic, assign) id cellObject;

@end
