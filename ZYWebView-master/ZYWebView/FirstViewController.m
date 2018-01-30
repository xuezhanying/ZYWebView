//
//  FirstViewController.m
//  ZYWebView
//
//  Created by xuezhanying on 17/7/1.
//  Copyright (c) 2017年 xuezhanying. All rights reserved.
//

#import "FirstViewController.h"
#import "ZYWebView.h"

@interface FirstViewController ()
@property(strong,nonatomic)ZYWebView* webView;
@end

@implementation FirstViewController
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
        self.title = @"ZYWebView";
    }
    return self;
}
- (void)viewDidLoad
{
    self.view.backgroundColor = [UIColor whiteColor];
    [super viewDidLoad];
    self.webView = [[ZYWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:_webView];
    
    if(_webView.usingUIWebView)
    {
        self.title = @"百度-UIWebView";
    }
    else
    {
        self.title = @"百度-WKWebView";
    }
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.baidu.com"]]];
    //[_webView stringByEvaluatingJavaScriptFromString:@""];
    [_webView evaluateJavaScript:@"document.body.scrollHeight" completionHandler:^(id str, NSError *error) {
        NSLog(@"str  %@",str);
        NSLog(@"error  %@",error);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
