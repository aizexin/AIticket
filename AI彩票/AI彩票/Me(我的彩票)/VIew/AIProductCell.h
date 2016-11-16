//
//  AIProductCell.h
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AIProductModel;
@interface AIProductCell : UICollectionViewCell
/**
 *  产品图片
 */
@property (weak, nonatomic) IBOutlet UIImageView *productImage;
/**
 *  产品名字
 */
@property (weak, nonatomic) IBOutlet UILabel *productLabel;
/**
 *  存储模型
 */
@property(strong, nonatomic)AIProductModel *productModel;
@end
