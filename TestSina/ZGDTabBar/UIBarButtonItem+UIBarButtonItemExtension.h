//
//  UIBarButtonItem+UIBarButtonItemExtension.h
//  SinaWeiBo
//
//  Created by ADAQM on 16/4/20.
//  Copyright © 2016年 ZGD. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (UIBarButtonItemExtension)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage;


@end
