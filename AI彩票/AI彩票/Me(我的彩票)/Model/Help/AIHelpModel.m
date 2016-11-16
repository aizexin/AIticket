//
//  AIHelpModel.m
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIHelpModel.h"

@implementation AIHelpModel

+(instancetype)helpWithDict:(NSDictionary*)dict{
    return [[self alloc]initWithDict:dict];
}

-(instancetype)initWithDict:(NSDictionary*)dict{
    self = [super init];
    if (self) {
        self.title = dict[@"title"];
        self.html = dict[@"html"];
    }
    return self;
}
@end
