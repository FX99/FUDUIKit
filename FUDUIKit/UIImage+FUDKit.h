//
//  UIImage+FUDKit.h
//  FUDUIKit
//
//  Created by lanfudong on 2019/11/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (FUDKit)

/**
 生成指定颜色、指定尺寸的图片
 @param color 颜色
 @param size 尺寸
 */
+ (UIImage *)fud_imageWithColor:(UIColor *)color size:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
