//
//  SecondViewController.m
//  ZYWebView
//
//  Created by xuezhanying on 17/7/1.
//  Copyright (c) 2017年 xuezhanying. All rights reserved.
//

#import "SecondViewController.h"
#import "ZYWebView.h"
@interface SecondViewController ()
@property(strong,nonatomic)ZYWebView* webView;
@end

@implementation SecondViewController
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        self.title = @"UIWebView";
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.webView = [[ZYWebView alloc] initWithFrame:self.view.bounds usingUIWebView:YES];
    [self.view addSubview:_webView];
    
    if(_webView.usingUIWebView)
    {
        self.title = @"天猫-UIWebView";
    }
    else
    {
        self.title = @"天猫-WKWebView";
    }
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.tmall.com"]]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
