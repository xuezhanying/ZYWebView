//
//  WYWeakScriptMessageDelegate.h
//  ZYWebView
//
//  Created by xuezhanying on 17/7/1.
//  Copyright (c) 2017年 xuezhanying. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WebKit/WKScriptMessageHandler.h>

@interface WYWeakScriptMessageDelegate : NSObject <WKScriptMessageHandler>

@property (nonatomic, assign) id<WKScriptMessageHandler> scriptDelegate;

- (instancetype)initWithDelegate:(id<WKScriptMessageHandler>)scriptDelegate;

@end
