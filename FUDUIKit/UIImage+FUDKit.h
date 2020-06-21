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
/**
 将磁盘上大图片解码为小图片（建议在子线程使用），避免浪费内存
 @param imageURL 大图片所在路径
 @param size 小图片尺寸
 @param scale scale
 */
+ (UIImage *)downSample:(NSURL *)imageURL toSize:(CGSize)size scale:(CGFloat)scale;

@end

NS_ASSUME_NONNULL_END
