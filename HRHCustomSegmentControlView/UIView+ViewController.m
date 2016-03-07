//
//  UIView+ViewController.m
//  03 点击的分层传递
//
//  Created by 1222 on 15/11/14.
//  Copyright © 2015年 JimmyL. All rights reserved.
//

#import "UIView+ViewController.h"

@implementation UIView (ViewController)

- (UIViewController *)viewController
{
    UIResponder *responder = self.nextResponder;
    
    do {
        if ([responder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)responder;
        }
        
        responder = responder.nextResponder;
    } while (responder != nil);
    return nil;

}

@end
