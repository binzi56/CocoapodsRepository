//
//  RootTabBarController.m
//  CocoapodsRepository
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "RootTabBarController.h"
#import "HomeViewController.h"
#import "SearchViewController.h"
#import "MineViewController.h"

@interface RootTabBarController ()

@end

@implementation RootTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置tabBar
    UIColor *backgroundColor = [UIColor brownColor];
    UIColor *foregroundColor = [UIColor whiteColor];
    
    self.tabBar.barTintColor = backgroundColor;
    self.tabBar.tintColor = foregroundColor;
    
    NSArray *titlesArr = @[@"首页", @"发现", @"我的"];
    NSArray *imagesArr = @[@"home", @"search", @"mine"];
    
    // 创建对应的控制器放加入TabBarController的数组中.
    self.viewControllers = @[[[UINavigationController alloc] initWithRootViewController:[HomeViewController new]],
                             [[UINavigationController alloc] initWithRootViewController:[SearchViewController new]],
                             [[UINavigationController alloc] initWithRootViewController:[MineViewController new]]
                            ];
    
    // 遍历将文字和图片放入tabBar的Item中
    for (int i = 0; i < self.viewControllers.count; ++i) {
        UINavigationController *vc = self.viewControllers[i];
        vc.tabBarItem.title = titlesArr[i];
        vc.tabBarItem.image = [UIImage imageNamed:imagesArr[i]];        
        vc.navigationBar.barTintColor = backgroundColor;
        vc.navigationBar.tintColor = foregroundColor;
        vc.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: foregroundColor};
    }
    // 状态栏样式设置
    [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
