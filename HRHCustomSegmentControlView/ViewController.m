//
//  ViewController.m
//  HRHCustomSegmentControlView
//
//  Created by 黄瑞桦 on 14/1/16.
//  Copyright © 2016年 黄瑞桦. All rights reserved.
//
#define kWidth [UIScreen mainScreen].bounds.size.width


#import "ViewController.h"
#import "FirstFloorLabel.h"
#import "SecondFloorLabel.h"
#import "RootView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)loadView {
    
    RootView *rootView = [[RootView alloc] initWithFrame: [UIScreen mainScreen].bounds];
    self.view = rootView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self loadCustomView];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    
//       NSLog(@"%@收到事件",[self class]);
//    
//    CGPoint p = [self.view convertPoint:<#(CGPoint)#> toView:<#(nullable UIView *)#> ]
//
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
