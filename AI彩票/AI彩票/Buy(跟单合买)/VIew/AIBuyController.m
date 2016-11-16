//
//  AIBuyController.m
//  AI彩票
//
//  Created by qianfeng on 15/9/11.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIBuyController.h"
#import "AINavButton.h"
#import "AIDefine.h"
@interface AIBuyController ()
@property(nonatomic,strong)UIView *subV;
@end

@implementation AIBuyController

- (void)viewDidLoad {
    [super viewDidLoad];
    _subV = [[UIView alloc]initWithFrame:CGRectMake(0, 0, Mainsize.width, 200)];
    _subV.backgroundColor = [UIColor colorWithRed:0.84 green:0.85 blue:0.87 alpha:1.0];
    [self.view addSubview:_subV];
    _subV.hidden = YES;
    
    // Do any additional setup after loading the view.
}

#pragma mark -点击三角按钮
- (IBAction)sanjiaoBtnOnClick:(AINavButton *)sender {
//    [sender setSelected:sender.isOpen];
    
    if (!sender.isOpen) {
        
        [UIView animateWithDuration:2.0 animations:^{
            
            sender.imageView.transform = CGAffineTransformMakeRotation(M_PI);
            _subV.hidden = NO;
        }];
    }else{
        [UIView animateWithDuration:2.0 animations:^{
            
            [sender.imageView setTransform:(CGAffineTransformIdentity)];
            _subV.hidden = YES;
        }];
        
    }
   sender.open = !sender.isOpen;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
