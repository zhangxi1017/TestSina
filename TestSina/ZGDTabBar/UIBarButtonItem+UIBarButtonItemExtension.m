//
//  UIBarButtonItem+UIBarButtonItemExtension.m
//  SinaWeiBo
//
//  Created by ADAQM on 16/4/20.
//  Copyright © 2016年 ZGD. All rights reserved.
//

#import "UIBarButtonItem+UIBarButtonItemExtension.h"
#import "UIViewExt.h"

@implementation UIBarButtonItem (UIBarButtonItemExtension)

+ (UIBarButtonItem *)itemWithTarget:(id)target action:(SEL)action image:(NSString *)image highImage:(NSString *)highImage
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size = button.currentImage.size;
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
