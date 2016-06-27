//
//  MainTabBarController.m
//  仿战旗TV直播平台
//
//  Created by dentist on 16/6/23.
//  Copyright © 2016年 夏智. All rights reserved.
//

#import "MainTabBarController.h"
#import "GameViewController.h"
#import "HomeViewController.h"
#import "LiveViewController.h"
#import "MineViewController.h"
#import "MainNavigationController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    HomeViewController *hv = [[HomeViewController alloc]init];
    LiveViewController *lv = [[LiveViewController alloc]init];
    GameViewController *gv = [[GameViewController alloc]init];
    MineViewController *mv = [[MineViewController alloc]init];
    
    
    mv.title = @"我的";
    hv.title = @"首页";
    lv.title = @"直播";
    gv.title = @"游戏";
    
    NSArray *images = @[@"tabbar_room.png",@"tabbar_me.png",@"tabbar_game.png",@"tabbar_home.png"];
    
    
    
    
    [self addChildViewController:[[MainNavigationController alloc]initWithRootViewController:gv]];
    [self addChildViewController:[[MainNavigationController alloc]initWithRootViewController:hv]];
    [self addChildViewController:[[MainNavigationController alloc]initWithRootViewController:lv]];
    [self addChildViewController:[[MainNavigationController alloc]initWithRootViewController:mv]];
    mv.tabBarItem.image = [UIImage imageNamed:images[1]];
    hv.tabBarItem.image = [UIImage imageNamed:images[3]];
    lv.tabBarItem.image = [UIImage imageNamed:images[0]];
    gv.tabBarItem.image = [UIImage imageNamed:images[2]];
    
    
    
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
