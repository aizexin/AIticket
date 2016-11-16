//
//  AIConfigCell.m
//  AI彩票
//
//  Created by qianfeng on 15/9/13.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIConfigCell.h"
#import "AIConfigBaseItemModel.h"
#import "AISwitchItemModel.h"
#import "AIArrowItemModel.h"
#import "AILabelItemModel.h"
#import "AIDefine.h"
@interface AIConfigCell ()

@property(strong,nonatomic)UISwitch *switchBtn;
@property(strong,nonatomic)UIImageView *arrowImage;
@property(strong,nonatomic)UILabel *labelView;
@end


@implementation AIConfigCell

-(UISwitch *)switchBtn{
    if (!_switchBtn) {
        _switchBtn = [[UISwitch alloc]init];
        [_switchBtn addTarget:self action:@selector(onClickSwitchBtn:) forControlEvents:(UIControlEventValueChanged)];

    }
    return _switchBtn;
}
/**
 *  监听switch改变状态
 *
 */
-(void)onClickSwitchBtn:(UISwitch*)switchbtn{
    //存储状态
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setBool:switchbtn.isOn forKey:self.item.configTitle];
    //立马储存
    [defaults synchronize];
}

-(UIImageView *)arrowImage{
    if (!_arrowImage) {
        _arrowImage = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"CellArrow"]];
    }
    return _arrowImage;
}

-(UILabel *)labelView{
    if (!_labelView) {
        _labelView = [[UILabel alloc]initWithFrame:CGRectMake(250, 0, 100, 44)];
        _labelView.text = @"00:00";
    }
    return _labelView;
}

+(instancetype)cellWithTabelView:(UITableView*)tableView{
    AIConfigCell *cell = [tableView dequeueReusableCellWithIdentifier:@"reuseIdentifier"];
    if (!cell) {
        cell = [[AIConfigCell alloc]initWithStyle:(UITableViewCellStyleValue1) reuseIdentifier:@"reuseIdentifier"];
    }
    return cell;
}

-(void)setItem:(AIConfigBaseItemModel *)item{
    _item = item;
    self.imageView.image = [UIImage imageNamed:item.configIcon];
    self.textLabel.text = item.configTitle;
    //设置辅助视图
    if ([item isKindOfClass:[AISwitchItemModel class]]) {//如果是swith
        //读取状态
         self.accessoryView = self.switchBtn;

        // 回复存储的状态
        NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        self.switchBtn.on = [defaults boolForKey:item.configTitle];
        //设置选中样式为无
        self.selectionStyle = UITableViewCellSelectionStyleNone;
    }else if([item isKindOfClass:[AIArrowItemModel class]]){//如果是尖尖
        if (item.tel) {
            self.detailTextLabel.text = item.tel;
        }
        self.accessoryView = self.arrowImage;
    }else if([item isKindOfClass:[AILabelItemModel class]]){
         self.accessoryView = self.labelView;
    }
    else{
        self.accessoryView = nil;
    }
}

@end
