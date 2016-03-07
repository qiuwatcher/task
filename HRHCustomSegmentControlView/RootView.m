//
//  RootView.m
//  HRHCustomSegmentControlView
//
//  Created by 黄瑞桦 on 14/1/16.
//  Copyright © 2016年 黄瑞桦. All rights reserved.
//

#define kWidth [UIScreen mainScreen].bounds.size.width



#import "RootView.h"
#import "FirstFloorLabel.h"
#import "SecondFloorLabel.h"


@implementation RootView
{
    UIView *buttonView;
    UIView *label2sFatherView;
}



- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        [self loadCustomView];
    }
    return self;
}
- (void)loadCustomView {
    
    NSArray *arrayTitle = @[@"Hello",@"Apple",@"Objc",@"Swift"];
    for (int i = 0; i < 4; i++) {
        
        FirstFloorLabel *label1 = [[FirstFloorLabel alloc] initWithFrame:CGRectMake((kWidth - 320)/2 + i*80, 40, 80, 40)];
        label1.textColor = [UIColor blackColor];
        label1.userInteractionEnabled = YES;
        label1.tag = i+10;
        label1.textAlignment = NSTextAlignmentCenter;
        //label1.backgroundColor = [UIColor grayColor];
        label1.text = arrayTitle[i];
        [self addSubview:label1];
        
        
    }
    buttonView = [[UIView alloc] initWithFrame:CGRectMake((kWidth - 320)/2, 40, 80, 40)];
    buttonView.backgroundColor = [UIColor redColor];
    buttonView.layer.cornerRadius = 8;
    buttonView.clipsToBounds = YES;
    [self addSubview:buttonView];
    
    label2sFatherView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    //label2sFatherView.backgroundColor = [UIColor greenColor];
    //label2sFatherView.alpha = 0.5;
    [buttonView addSubview:label2sFatherView];
    for (int i = 0; i < 4; i++) {
        
        SecondFloorLabel *label2 = [[SecondFloorLabel alloc] initWithFrame:CGRectMake(i*80, 0, 80, 40)];
        label2.textColor = [UIColor whiteColor];
        label2.textAlignment = NSTextAlignmentCenter;
        label2.text = arrayTitle[i];
        
        [label2sFatherView addSubview:label2];
        
    }
    
    
}


- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    
    for (UIView *subView in self.subviews) {
        
        CGPoint p = [self convertPoint:point toView:subView];
        
        if ([subView pointInside:p withEvent:event] && [subView isKindOfClass:[FirstFloorLabel class]]) {
            [UIView animateWithDuration:0.7 animations:^{
                CGPoint p3 = label2sFatherView.center;
                
                CGPoint p1 = buttonView.center;
                CGPoint p2 = subView.center;
                CGFloat offsetX = p2.x - p1.x;
                p3.x -= offsetX;

                
                buttonView.center = subView.center;
                
            
                label2sFatherView.center = p3;
                

            }];
            return subView;
        }
    }
    return [super hitTest:point withEvent:event];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //CGPoint p =
    
    NSLog(@"%@接收事件",[self class]);
    NSLog(@"%f",self.frame.origin.x);
}

@end
