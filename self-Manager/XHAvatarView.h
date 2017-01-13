//
//  XHAvatarView.h
//  self-Manager
//
//  Created by XH on 17/1/13.
//  Copyright © 2017年 huoniu. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XHAvatarView;

@interface XHAvatarView : UIView

- (void)configureWithAvatarURL:(NSURL *)URL VIPInfo:(id)info tapped:(void (^)())block;

@end

@interface XHAvatarView (XHAvatarViewManager)

- (void)selfManagedConfigureWithAvatarURL:(NSURL *)URL VIPInfo:(id)info uid:(NSString *)uid;

@end
