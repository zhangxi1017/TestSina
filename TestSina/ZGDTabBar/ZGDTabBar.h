//
//  ZGDTabBar.h
//  SinaWeiBo
//
//  Created by ADAQM on 16/4/25.
//  Copyright © 2016年 ZGD. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZGDTabBar;

@protocol ZGDTabBarDelegate <UITabBarDelegate>

- (void)ZGDTabBarClickPlusBtn:(ZGDTabBar *)tabbar;

@end

@interface ZGDTabBar : UITabBar
@property(nonatomic,weak)id<ZGDTabBarDelegate>delegate;
@end
