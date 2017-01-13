//
//  XHAvatarView.m
//  self-Manager
//
//  Created by XH on 17/1/13.
//  Copyright © 2017年 huoniu. All rights reserved.
//

#import "XHAvatarView.h"

#import "TempViewController.h"

@interface XHAvatarView ()

@property (nonatomic,copy) void (^tempBlcok)() ;

@end

@implementation XHAvatarView


- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];

        btn.frame = CGRectMake(10, 10, 50, 50);
        
        btn.backgroundColor = [UIColor redColor];
        
        [btn addTarget:self action:@selector(btndown) forControlEvents:UIControlEventTouchUpInside];

        [self addSubview:btn];
        
        
    }
    return self;
}

- (void)btndown{
    
    
    if (self.tempBlcok) {
        self.tempBlcok();
    }
}

- (void)configureWithAvatarURL:(NSURL *)URL VIPInfo:(id)info tapped:(void (^)())block{
    
    
    
    self.tempBlcok = block;
    
    // 赋值操作.
    
}
@end

@implementation XHAvatarView (XHAvatarViewManager)


- (void)selfManagedConfigureWithAvatarURL:(NSURL *)URL VIPInfo:(id)info uid:(NSString *)uid{
    
    [self configureWithAvatarURL:URL VIPInfo:info tapped:^{
        
        UINavigationController *navigationController= (id)UIApplication.sharedApplication.delegate.window.rootViewController;

        NSLog(@"页面跳转了====");
        TempViewController  * vc = [[TempViewController alloc] init];
        
        [navigationController pushViewController:vc animated:YES];

    }];
    
}

@end
