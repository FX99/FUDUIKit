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

+ (UIImage *)downSample:(NSURL *)URL toSize:(CGSize)size scale:(CGFloat)scale {
    // kCGImageSourceShouldCache设为false，目的在于告知系统此imageSource仅为建立与imageURL的链接，不需要解码
    CFDictionaryRef imageSourceOptions = (__bridge CFDictionaryRef)@{(__bridge NSString*)kCGImageSourceShouldCache: @(NO)};
    CGImageSourceRef imageSource = CGImageSourceCreateWithURL((__bridge CFURLRef)URL, imageSourceOptions);
    CGFloat maxDimensionPixels = MAX(size.width, size.height) * scale;
    // kCGImageSourceShouldCacheImmediately设为true，以此控制系统以计算出的size创建Image Buffer并解压
    CFDictionaryRef downSampleOptions = (__bridge CFDictionaryRef)@{
        (__bridge NSString*)kCGImageSourceCreateThumbnailFromImageAlways: @(YES),
        (__bridge NSString*)kCGImageSourceShouldCacheImmediately: @(YES),
        (__bridge NSString*)kCGImageSourceCreateThumbnailWithTransform: @(YES),
        (__bridge NSString*)kCGImageSourceThumbnailMaxPixelSize: @(maxDimensionPixels),
    };
    CGImageRef thumbnailImage = CGImageSourceCreateThumbnailAtIndex(imageSource, 0, downSampleOptions);
    return [UIImage imageWithCGImage:thumbnailImage];
}

@end
