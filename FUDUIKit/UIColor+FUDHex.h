//
//  UIColor+FUDHex.h
//  FUDUIKit
//
//  Created by lanfudong on 2019/11/2.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (FUDHex)

/**
 十六进制数值生成 UIColor 实例
 @param color 十六进制颜色值
 @return UIColor 实例
 */
+ (UIColor *)fud_colorWithHex:(long)color;
/**
 十六进制数值生成 UIColor 实例
 @param color 十六进制颜色值
 @param alpha 透明度
 @return UIColor 实例
*/
+ (UIColor *)fud_colorWithHex:(long)color alpha:(CGFloat)alpha;

/**
 使用十六进制字符串生成 UIColor 实例
 @param color 十六进制字符串
 @return UIColor 实例
*/
+ (UIColor *)fud_colorWithHexString:(NSString *)color;
/**
 使用十六进制字符串生成 UIColor 实例
 @param color 十六进制字符串
 @param alpha 透明度
 @return UIColor 实例
*/
+ (UIColor *)fud_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
