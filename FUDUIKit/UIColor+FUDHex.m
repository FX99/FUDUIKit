//
//  UIColor+FUDHex.m
//  FUDUIKit
//
//  Created by lanfudong on 2019/11/2.
//

#import "UIColor+FUDHex.h"

@implementation UIColor (FUDHex)

+ (UIColor *)fud_colorWithHex:(long)color {
    return [self fud_colorWithHex:color alpha:1.0];
}

+ (UIColor *)fud_colorWithHex:(long)color alpha:(CGFloat)alpha {
    CGFloat red   = ((color & 0xff0000) >> 16) / 255.f;
    CGFloat green = ((color & 0xff00) >> 8) / 255.f;
    CGFloat blud  =  (color & 0xff) / 255.f;
    
    return [UIColor colorWithRed:red green:green blue:blud alpha:alpha];
}

+ (UIColor *)fud_colorWithHexString:(NSString *)color {
    return [self fud_colorWithHexString:color alpha:1.0];
}

+ (UIColor *)fud_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha {
    color = [[color stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    if ([color hasPrefix:@"#"]) color = [color substringFromIndex:1];
    if ([color hasPrefix:@"0X"]) color = [color substringFromIndex:2];
    if (color.length < 6) return nil;
    
    //取出透明度、红、绿、蓝
    unsigned int a, r, g, b;
    NSRange range = NSMakeRange(0, 2);
    if (color.length == 8) {
        NSString *aString = [color substringWithRange:range];
        
        range.location = 2;
        NSString *rString = [color substringWithRange:range];
        
        range.location = 4;
        NSString *gString = [color substringWithRange:range];
        
        range.location = 6;
        NSString *bString = [color substringWithRange:range];
        
        [[NSScanner scannerWithString:aString] scanHexInt:&a];
        [[NSScanner scannerWithString:rString] scanHexInt:&r];
        [[NSScanner scannerWithString:gString] scanHexInt:&g];
        [[NSScanner scannerWithString:bString] scanHexInt:&b];
        
        return [UIColor colorWithRed:r / 255.f green:g / 255.f blue:b / 255.f alpha:a / 255.f];
    } else {
        NSString *rString = [color substringWithRange:range];
        
        range.location = 2;
        NSString *gString = [color substringWithRange:range];
        
        range.location = 4;
        NSString *bString = [color substringWithRange:range];
        
        [[NSScanner scannerWithString:rString] scanHexInt:&r];
        [[NSScanner scannerWithString:gString] scanHexInt:&g];
        [[NSScanner scannerWithString:bString] scanHexInt:&b];
        
        return [UIColor colorWithRed:r / 255.f green:g / 255.f blue:b / 255.f alpha:alpha];
    }
}

@end
