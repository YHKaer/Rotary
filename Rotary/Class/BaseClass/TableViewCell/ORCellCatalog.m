//
//  ORCellCatalog.m
//  Rotary
//
//  Created by oscar on 15/12/16.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import "ORCellCatalog.h"

@implementation ORSubtitleCellObject

- (instancetype)copyWithZone:(NSZone *)zone{
    ORSubtitleCellObject *object = [[[self class] allocWithZone:zone] init];
    object.subtitle = self.subtitle;
    object.cellStyle = self.cellStyle;
    object.title = self.title;
    object.image = self.image;
    object.userInfo = self.userInfo;
    object.lineEdgeInsets = object.lineEdgeInsets;
    object.isHiddenSeparateLine = object.isHiddenSeparateLine;
    return object;
}

- (Class)cellClass {
    return [ORTextCell class];
}

@end

@implementation ORTitleCellObject

- (instancetype)copyWithZone:(NSZone *)zone{
    ORTitleCellObject *object = [[[self class] allocWithZone:zone] init];
    object.title = self.title;
    object.image = self.image;
    object.userInfo = self.userInfo;
    object.lineEdgeInsets = object.lineEdgeInsets;
    object.isHiddenSeparateLine = object.isHiddenSeparateLine;
    return object;
}

- (Class)cellClass {
    return [ORTextCell class];
}

@end

@interface ORTextCell ()

@property (nonatomic, assign) UIEdgeInsets lineEdgeInsets;

@property (nonatomic, strong) UIImageView *separateLineView;

@end

@implementation ORTextCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.separateLineView = [[UIImageView alloc] init];
        self.separateLineView.backgroundColor = [UIColor blackColor];
        self.separateLineView.alpha = 0.3f;
        [self addSubview:self.separateLineView];
        [self.separateLineView mas_remakeConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.mas_leading).offset(10);
            make.trailing.equalTo(self.mas_trailing).offset(0);
            make.bottom.equalTo(self.mas_bottom);
            make.height.equalTo(@(1));
        }];
    }
    return self;
}

- (BOOL)shouldUpdateCellWithObject:(id)object{
    [super shouldUpdateCellWithObject:object];
    self.cellObject = object;
    
    if ([object isKindOfClass:[ORTitleCellObject class]]) {
        ORTitleCellObject* titleObject = object;
        self.lineEdgeInsets = titleObject.lineEdgeInsets;
        self.separateLineView.hidden = titleObject.isHiddenSeparateLine;
    }
    
    if ([object isKindOfClass:[ORSubtitleCellObject class]]) {
        ORSubtitleCellObject* subtitleObject = object;
        self.detailTextLabel.text = subtitleObject.subtitle;
        self.lineEdgeInsets = subtitleObject.lineEdgeInsets;
        self.separateLineView.hidden = subtitleObject.isHiddenSeparateLine;
    }
    
    return YES;
}

-(void)setLineEdgeInsets:(UIEdgeInsets)lineEdgeInsets
{
    CGFloat left = lineEdgeInsets.left;
    CGFloat right = lineEdgeInsets.right;
    CGFloat bottom = lineEdgeInsets.bottom;
    if (left)
    {
        [self.separateLineView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.leading.equalTo(self.mas_leading).offset(left);
        }];
    }
    if (right)
    {
        [self.separateLineView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.trailing.equalTo(self.mas_trailing).offset(right);
        }];
    }
    if (bottom)
    {
        [self.separateLineView mas_updateConstraints:^(MASConstraintMaker *make) {
            make.bottom.equalTo(self.mas_bottom).offset(bottom);
        }];
    }
}


@end
