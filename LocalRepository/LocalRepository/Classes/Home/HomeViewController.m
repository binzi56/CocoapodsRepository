//
//  HomeViewController.m
//  CocoapodsRepository
//
//  Created by 帅斌 on 2018/9/15.
//  Copyright © 2018年 personal. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UILabel *centerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 50)];
    centerLabel.center = CGPointMake(self.view.frame.size.width / 2.0, self.view.frame.size.height / 2.0);
    centerLabel.backgroundColor = [UIColor brownColor];
    centerLabel.textColor = [UIColor whiteColor];
    centerLabel.textAlignment = NSTextAlignmentCenter;
    centerLabel.text = @"首页";
    [self.view addSubview:centerLabel];
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
