//
//  MGTabBarController.m
//  MGLoveFreshBeen
//
//  Created by 穆良 on 16/4/4.
//  Copyright © 2016年 穆良. All rights reserved.
//

#import "MGTabBarController.h"
#import "MGHomeViewController.h"
#import "MGCartViewController.h"
#import "MGMarketViewController.h"
#import "MGMineViewController.h"
#import "MGNavigationController.h"

@interface MGTabBarController ()

@end

@implementation MGTabBarController

+ (void)initialize
{
    // 设置tabBarItem文字的属性
    UITabBarItem *tabBarItem = [UITabBarItem appearance];
    
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    attrs[NSFontAttributeName] = [UIFont systemFontOfSize:12];
    attrs[NSForegroundColorAttributeName] = MGRGBColor(147, 147, 147);
    
    // 崩了
//    tabBarItem.imageInsets = UIEdgeInsetsMake(-8, 0, 8, 0);
    
    NSMutableDictionary *selAttrs = [NSMutableDictionary dictionary];
    selAttrs[NSFontAttributeName] = attrs[NSFontAttributeName];
    selAttrs[NSForegroundColorAttributeName] = [UIColor darkGrayColor];
    
    [tabBarItem setTitleTextAttributes:attrs forState:UIControlStateNormal];
    [tabBarItem setTitleTextAttributes:selAttrs forState:UIControlStateSelected];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupChildVc:[[MGHomeViewController alloc] init] title:@"首页" image:@"v2_home" selectedImage:@"v2_home_r"];
    [self setupChildVc:[[MGMarketViewController alloc] init] title:@"闪电超市" image:@"v2_order" selectedImage:@"v2_order_r"];
    [self setupChildVc:[[MGCartViewController alloc] init] title:@"购物车" image:@"shopCart" selectedImage:@"shopCart"];
    [self setupChildVc:[[MGMineViewController alloc] init] title:@"我的" image:@"v2_my" selectedImage:@"v2_my_r"];
}


- (void)setupChildVc:(UIViewController *)vc title:(NSString *)title image:(NSString *)image selectedImage:(NSString *)selectedImage
{
    vc.title = title;
    vc.tabBarItem.image = [UIImage imageNamed:image];
    vc.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    MGNavigationController *nav = [[MGNavigationController alloc] initWithRootViewController:vc];
    
    [self addChildViewController:nav];
}


//- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item
//{
//    
//}



@end
