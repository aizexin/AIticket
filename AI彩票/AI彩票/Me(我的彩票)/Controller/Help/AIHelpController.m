//
//  AIHelpController.m
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIHelpController.h"
#import "AIHelpModel.h"
#import "AIGroupModel.h"
#import "AIConfigBaseItemModel.h"
#import "AIHtmlController.h"
@interface AIHelpController ()
@property(nonatomic, strong)NSMutableArray *dataM;
@end

@implementation AIHelpController

#pragma mark -懒加载数据
-(NSMutableArray *)dataM{
    if (!_dataM) {
        //读取json文件的数据
        NSString *path = [[NSBundle mainBundle]pathForResource:@"help.json" ofType:nil];
        NSData *data = [NSData dataWithContentsOfFile:path];
        NSArray *arry = [NSJSONSerialization JSONObjectWithData:data options:(NSJSONReadingMutableContainers) error:nil];
        NSMutableArray *arrayM = [NSMutableArray arrayWithCapacity:arry.count];
        for (NSDictionary *itemDict in arry) {
            AIHelpModel *itemModel = [AIHelpModel helpWithDict:itemDict];
            [arrayM addObject:itemModel];
        }
        _dataM = arrayM;
    }
    return _dataM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *itemArrayM = [NSMutableArray arrayWithCapacity:self.dataM.count];
    for (AIHelpModel *model in self.dataM) {
        AIArrowItemModel *itemModel = [[AIArrowItemModel alloc]initWithIcon:nil andTitle:model.title andTarget:nil];
        [itemArrayM addObject:itemModel];
    }
    AIGroupModel *group = [[AIGroupModel alloc]init];
    group.groupConfigM = itemArrayM;
    [self.dataSourceM addObject:group];
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    AILog(@"你点我干嘛");
    AIHtmlController *htmlC = [[AIHtmlController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:htmlC];
    htmlC.helpModel = self.dataM[indexPath.row];
    [self presentViewController:nav animated:YES completion:^{
        
    }];
}

@end
