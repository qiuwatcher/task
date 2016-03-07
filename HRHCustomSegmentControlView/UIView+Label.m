//
//  UIView+Label.m
//  HRHCustomSegmentControlView
//
//  Created by 黄瑞桦 on 14/1/16.
//  Copyright © 2016年 黄瑞桦. All rights reserved.
//

#import "UIView+Label.h"

@implementation UIView (Label)
- (UILabel *)label {
    UIResponder *responder = self.nextResponder;
    
    do {
        if ([responder isKindOfClass:[UILabel class]]) {
            
            return (UILabel *)responder;
        }
        responder = responder.nextResponder;
    }while (responder != nil);
    
    return  nil;
        
        
        
}

@end
