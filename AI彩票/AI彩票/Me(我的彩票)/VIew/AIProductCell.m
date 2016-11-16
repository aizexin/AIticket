//
//  AIProductCell.m
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIProductCell.h"
#import "AIProductModel.h"
@implementation AIProductCell

-(void)setProductModel:(AIProductModel *)productModel{
    
    self.productImage.image = [UIImage imageNamed:productModel.icon];
    self.productLabel.text = productModel.title;
    
}

- (void)awakeFromNib {
    self.productImage.layer.cornerRadius = 8;
    self.productImage.clipsToBounds = YES;
}

@end
