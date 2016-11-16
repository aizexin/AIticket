//
//  AINavButton.m
//  AI彩票
//
//  Created by qianfeng on 15/9/11.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AINavButton.h"
//#define MyTitleFont [UIFont systemFontOfSize:15]
@interface AINavButton()
@property(strong,nonatomic)UIFont *myTitleFont;

@end
@implementation AINavButton
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}
-(void)setup{
    self.myTitleFont = [UIFont systemFontOfSize:15];
    self.titleLabel.font = self.myTitleFont;
    //设置按钮的图片显示内容默认居中（不拉伸）
    self.imageView.contentMode = UIViewContentModeCenter;
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect{
    CGFloat titleX = 0;
    CGFloat titleY = 0;
    
    CGFloat titleH = contentRect.size.height;
    CGSize maxSize = CGSizeMake(MAXFLOAT, MAXFLOAT);
    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
    NSString *title = self.currentTitle;
    dictM[NSFontAttributeName] = self.myTitleFont;
    CGFloat titleW = 0;
#ifdef __IPHONE_7_0
    CGRect rect = [title boundingRectWithSize:maxSize options:(NSStringDrawingUsesLineFragmentOrigin) attributes:dictM context:nil];
    titleW = rect.size.width;
    return CGRectMake(titleX, titleY, titleW, titleH);
#else
    [title sizeWithFont:self.myTitleFont];
#endif
    
    
}
- (CGRect)imageRectForContentRect:(CGRect)contentRect{
   
    CGFloat imageY = 0;
    CGFloat imageW = 16;
    CGFloat imageH = contentRect.size.height;
    CGFloat imageX = contentRect.size.width - imageW;
    return CGRectMake(imageX, imageY, imageW, imageH);
}

@end
