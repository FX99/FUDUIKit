//
//  UIImage+FUDKit.m
//  FUDUIKit
//
//  Created by lanfudong on 2019/11/2.
//

#import "UIImage+FUDKit.h"

@implementation UIImage (FUDKit)

+ (UIImage *)fud_imageWithColor:(UIColor *)color size:(CGSize)size {
    UIGraphicsBeginImageContextWithOptions(size, YES, [UIScreen mainScreen].scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, CGRectMake(0, 0, size.width, size.height));
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
