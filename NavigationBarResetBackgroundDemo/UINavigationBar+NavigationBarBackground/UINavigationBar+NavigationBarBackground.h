//
//  UINavigationBar+Other.h
//  MZTimerLabelDemo
//
//  Created by HEYANG on 16/3/6.
//  Copyright © 2016年 HEYANG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (NavigationBarBackground)

/**
 *  设置NavigationBar的私有属性backgroundView的背景颜色
 *
 */
- (void)hy_setBackgroundViewWithColor:(UIColor *)backgroundColor;


/**
 *  设置NavigationBar的背景透明度
 * */
- (void)hy_setBackgroundViewWithAlpha:(CGFloat)alpha;

/**
 *  重设NavigationBar的背景样式为默认的样式
 */
- (void)hy_resetBackgroundDefaultStyle;
@end
