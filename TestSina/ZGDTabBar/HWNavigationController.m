//
//  HWNavigationController.m
//  SinaWeiBo
//
//  Created by ADAQM on 16/4/20.
//  Copyright © 2016年 ZGD. All rights reserved.
//

#import "HWNavigationController.h"
#import "UIBarButtonItem+UIBarButtonItemExtension.h"

@interface HWNavigationController ()

@end

@implementation HWNavigationController


+ (void)initialize
{
   UIBarButtonItem *item = [UIBarButtonItem appearance];
    NSMutableDictionary *dicM = [NSMutableDictionary dictionary];
    dicM[NSForegroundColorAttributeName] = [UIColor orangeColor];
    [item setTitleTextAttributes:dicM forState:UIControlStateNormal];


    NSMutableDictionary *disabledDic = [NSMutableDictionary dictionary];
    disabledDic[NSForegroundColorAttributeName] = [UIColor lightGrayColor];
    [item setTitleTextAttributes:disabledDic forState:UIControlStateDisabled];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    
    
    if (self.viewControllers.count > 0) {
        viewController.hidesBottomBarWhenPushed = YES;
       
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(back) image:@"navigationbar_back" highImage:@"navigationbar_back_highlighted"];
        
        // 设置右边的更多按钮
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithTarget:self action:@selector(more) image:@"navigationbar_more" highImage:@"navigationbar_more_highlighted"];
        
    }
    [super pushViewController:viewController animated:animated];
}

- (void)back
{
#warning 这里要用self，不是self.navigationController
    // 因为self本来就是一个导航控制器，self.navigationController这里是nil的
    [self popViewControllerAnimated:YES];
}

- (void)more
{
    [self popToRootViewControllerAnimated:YES];
}
@end
