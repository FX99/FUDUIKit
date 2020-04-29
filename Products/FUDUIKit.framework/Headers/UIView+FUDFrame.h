//
//  UIView+FUDFrame.h
//  FUDUIKit
//
//  Created by lanfudong on 2019/11/1.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (FUDFrame)

@property (nonatomic, assign) CGFloat fud_x;
@property (nonatomic, assign) CGFloat fud_y;
@property (nonatomic, assign) CGSize  fud_size;
@property (nonatomic, assign) CGFloat fud_width;
@property (nonatomic, assign) CGFloat fud_height;
@property (nonatomic, assign) CGPoint fud_origin;

@end

NS_ASSUME_NONNULL_END
