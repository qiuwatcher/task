//
//  SecondFloorLabel.m
//  HRHCustomSegmentControlView
//
//  Created by 黄瑞桦 on 14/1/16.
//  Copyright © 2016年 黄瑞桦. All rights reserved.
//

#import "SecondFloorLabel.h"
#import "UIView+Label.h"
#import "UIView+ViewController.h"

@implementation SecondFloorLabel
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //self.backgroundColor = [UIColor greenColor];
    }
    return self;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    
    [[self viewController] touchesBegan:touches withEvent:event];
}

@end
