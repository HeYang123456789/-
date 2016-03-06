//
//  ViewController.m
//  NavigationBarResetBackgroundDemo
//
//  Created by HEYANG on 16/3/6.
//  Copyright © 2016年 HEYANG. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationBar+NavigationBarBackground.h"

#define NAVBAR_CHANGE_POINT 50
@interface ViewController ()

@end

@implementation ViewController
// -64 --> 0
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    CGFloat offsetY = scrollView.contentOffset.y;
    if (offsetY > NAVBAR_CHANGE_POINT) {
        CGFloat alpha = MIN(1, 1 - ((NAVBAR_CHANGE_POINT + 64 - offsetY) / 64));
        [self.navigationController.navigationBar hy_setBackgroundViewWithAlpha:alpha];
    } else {
        [self.navigationController.navigationBar hy_setBackgroundViewWithAlpha:0];
    }
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 子控制器 拥有 导航控制的模型item，并不仅仅是导航控制器有的
    self.navigationItem.title = @"Hello World!";
    
    [self.navigationController.navigationBar hy_setBackgroundViewWithColor:[UIColor cyanColor]];
    [self.navigationController.navigationBar hy_setBackgroundViewWithAlpha:0];

    // 设置右边按钮
    [self addRightButton];
}

#pragma mark - rightButton
-(void)addRightButton{
    UIButton *moonButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [moonButton setBackgroundImage:[UIImage imageNamed:@"btnsetting"] forState:UIControlStateNormal];
    [moonButton setBackgroundImage:[UIImage imageNamed:@"btnsetting"] forState:UIControlStateHighlighted];
    [moonButton sizeToFit];
    [moonButton addTarget:self action:@selector(print) forControlEvents:UIControlEventTouchUpInside];
    // 要设置标题文字和按钮，需要在导航控制器对应的子控制器设置
    //        self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:moonButton];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:moonButton];
    
}
-(void)print{
    NSLog(@"Hello World!");
}



@end
