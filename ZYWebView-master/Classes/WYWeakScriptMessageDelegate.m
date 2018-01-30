//
//  WYWeakScriptMessageDelegate.m
//  ZYWebView
//
//  Created by xuezhanying on 17/7/1.
//  Copyright (c) 2017年 xuezhanying. All rights reserved.
//

#import "WYWeakScriptMessageDelegate.h"

@implementation WYWeakScriptMessageDelegate

- (instancetype)initWithDelegate:(id<WKScriptMessageHandler>)scriptDelegate
{
    self = [super init];
    if (self) {
        _scriptDelegate = scriptDelegate;
    }
    return self;
}

#pragma mark - WKScriptMessageHandler

- (void)userContentController:(WKUserContentController *)userContentController didReceiveScriptMessage:(WKScriptMessage *)message
{
    [self.scriptDelegate userContentController:userContentController didReceiveScriptMessage:message];
}


@end
