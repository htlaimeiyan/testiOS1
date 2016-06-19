//
//  RootViewController.m
//  006ChessProject
//
//  Created by Lucien老师 on 16/4/12.
//  Copyright © 2016年 Lucien老师. All rights reserved.
//

#import "RootViewController.h"
//#import "ChessView.h"
@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
// Do any additional setup after loading the view.
//    设置self.view的背景颜色
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeInfoDark];
    button.frame = CGRectMake(99, 99, 99, 99);
    button.backgroundColor = [UIColor greenColor];
//    设置button的文本
    [button setTitle:@"按钮文本" forState:UIControlStateNormal];
    
//   设置button文本的颜色
    [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateHighlighted];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    
    CGSize csize;
    csize.height = 10;
    csize.width = 10;
    
//    [button setTitleShadowOffset:csize];
//    [button setTitleShadowColor:[UIColor grayColor] forState:UIControlStateSelected];
//    [button.titleLabel setFont:[UIFont systemFontOfSize:50]];//可以把设置字体方法设置成宏
    button.titleLabel.textAlignment = NSTextAlignmentCenter;
    
//    [button addTarget:self action:@selector(touchDownAction) forControlEvents:UIControlEventTouchDown];
//    [button addTarget:self action:@selector(touchInsideAction:) forControlEvents:UIControlEventTouchUpInside];
    
    button.selected = NO;
    button.tag = 12;
    [button addTarget:self action:@selector(touchInsideAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    [button release];
    
}
//
//- (void) touchDownAction {
//    NSLog(@"touchDownAction");
//}

-(void) touchInsideAction:(UIButton *)button {
    NSLog(@"touchINsideAction");
    UIButton *myBtn = (UIButton *)[self.view viewWithTag:12];
    myBtn.selected = !myBtn.selected;
//    button.selected = YES;
}



@end
