//
//  AIHtmlController.m
//  AI彩票
//
//  Created by qianfeng on 15/9/14.
//  Copyright (c) 2015年 艾泽鑫. All rights reserved.
//

#import "AIHtmlController.h"
#import "AIDefine.h"
#import "AIHelpModel.h"
@interface AIHtmlController ()

@property(strong,nonatomic)UIWebView *webView;
@end

@implementation AIHtmlController

-(void)loadView{
    self.view = [[UIWebView alloc]init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _webView = (UIWebView*)self.view;
    NSString *path = [[NSBundle mainBundle]pathForResource:self.helpModel.html ofType:nil];
    NSURL *url = [[NSURL alloc]initFileURLWithPath:path];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    //加载网页
    [_webView loadRequest:request];
    [self addCloseBtn];
}

-(void)addCloseBtn{
    UIBarButtonItem *closeBtn = [[UIBarButtonItem alloc]initWithTitle:@"关闭" style:(UIBarButtonItemStylePlain) target:self action:@selector(onClickCloseBtn)];
    self.navigationItem.leftBarButtonItem = closeBtn;
}

-(void)onClickCloseBtn{
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
}
@end
