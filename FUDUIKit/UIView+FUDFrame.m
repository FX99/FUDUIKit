//
//  UIView+FUDFrame.m
//  FUDUIKit
//
//  Created by lanfudong on 2019/11/1.
//

#import "UIView+FUDFrame.h"

@implementation UIView (FUDFrame)

- (CGFloat)fud_x {
    return self.frame.origin.x;
}

- (void)setFud_x:(CGFloat)fud_x {
    self.frame = CGRectMake(fud_x, self.fud_y, self.fud_width, self.fud_height);
}

- (CGFloat)fud_y {
    return self.frame.origin.y;
}

- (void)setFud_y:(CGFloat)fud_y {
    self.frame = CGRectMake(self.fud_x, fud_y, self.fud_width, self.fud_height);
}

- (CGPoint)fud_origin {
    return self.frame.origin;
}

- (void)setFud_origin:(CGPoint)fud_origin {
    self.frame = CGRectMake(fud_origin.x, fud_origin.y, self.fud_width, self.fud_height);
}

- (CGFloat)fud_width {
    return self.frame.size.width;
}

- (void)setFud_width:(CGFloat)fud_width {
    self.frame = CGRectMake(self.fud_x, self.fud_y, fud_width, self.fud_height);
}

- (CGFloat)fud_height {
    return self.frame.size.height;
}

- (void)setFud_height:(CGFloat)fud_height {
    self.frame = CGRectMake(self.fud_x, self.fud_y, self.fud_width, fud_height);
}

- (CGSize)fud_size {
    return self.frame.size;
}

- (void)setFud_size:(CGSize)fud_size {
    self.frame = CGRectMake(self.fud_x, self.fud_y, fud_size.width, fud_size.height);
}

@end
