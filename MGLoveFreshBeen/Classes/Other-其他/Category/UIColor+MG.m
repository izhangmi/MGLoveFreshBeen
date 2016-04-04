//
//  UIColor+MG.m
//  MGLoveFreshBeen
//
//  Created by 穆良 on 16/4/5.
//  Copyright © 2016年 穆良. All rights reserved.
//

#import "UIColor+MG.h"

@implementation UIColor (MG)


+ (UIColor *)randomColor
{
    CGFloat r = arc4random_uniform(256);
    CGFloat g = arc4random_uniform(256);
    CGFloat b = arc4random_uniform(256);
    
    UIColor *randomColor = [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0];
    
    return randomColor;
}
@end
