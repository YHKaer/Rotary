//
//  ORSectionCellObject.h
//  Rotary
//
//  Created by oscar on 15/12/16.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import "ORCellCatalog.h"

@interface ORSectionCellObject : ORTitleCellObject

+ (ORSectionCellObject *)objectWithHeight:(CGFloat)cellHeight
                          backgroundColor:(UIColor *)backgroundColor;

@property (nonatomic, assign) CGFloat cellHeight;
@property (nonatomic, strong) UIColor *backgroundColor;

@end

@interface ORSectionCell : ORTextCell

@end
