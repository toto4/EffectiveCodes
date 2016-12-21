//
//  UIView+SAMViewCategory.m
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/20.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import "UIView+SAMViewCategory.h"


@implementation UIView (SAMViewCategory)


#pragma mark - getter setter

- (void)setSam_x:(CGFloat)sam_x
{
    CGRect rect = self.frame ;
    rect.origin.x = sam_x;
    self.frame = rect;
}
- (CGFloat)sam_x
{
    return self.frame.origin.x;
}

- (void)setSam_y:(CGFloat)sam_y
{
    CGRect rect = self.frame ;
    rect.origin.y = sam_y;
    self.frame = rect;
}
- (CGFloat)sam_y
{
    return self.frame.origin.y;
}

- (void)setSam_width:(CGFloat)sam_width
{
    CGRect rect = self.frame;
    rect.size.width = sam_width;
    self.frame = rect;
}
- (CGFloat)sam_width
{
    return self.frame.size.width;
}

- (void)setSam_height:(CGFloat)sam_height
{
    CGRect rect = self.frame;
    rect.size.height = sam_height;
    self.frame = rect;
}
- (CGFloat)sam_height
{
    return self.frame.size.height;
}


- (void)setSam_top:(CGFloat)sam_top
{
    self.frame = CGRectMake(self.sam_left, sam_top, self.sam_width, self.sam_height);
}
- (CGFloat)sam_top
{
    return self.frame.origin.y;
}

- (void)setSam_left:(CGFloat)sam_left
{
    self.frame = CGRectMake(sam_left, self.sam_top, self.sam_width, self.sam_height);
}
- (CGFloat)sam_left
{
    return self.frame.origin.x;
}

- (void)setSam_bottom:(CGFloat)sam_bottom
{
    self.frame = CGRectMake(self.sam_left, sam_bottom - self.sam_height, self.sam_width, self.sam_height);
}
- (CGFloat)sam_bottom
{
    return self.frame.size.height + self.frame.origin.y;
}

- (void)setSam_right:(CGFloat)sam_right
{
    self.frame = CGRectMake(sam_right - self.sam_width, self.sam_top, self.sam_width, self.sam_height);
}
- (CGFloat)sam_right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setSam_center_x:(CGFloat)sam_center_x
{
    CGPoint center = self.center;
    center.x = sam_center_x;
    self.center = center;
}
- (CGFloat)sam_center_x
{
    return self.center.x;
}

- (void)setSam_center_y:(CGFloat)sam_center_y
{
    CGPoint center = self.center;
    center.y = sam_center_y;
    self.center = center;
}
- (CGFloat)sam_center_y
{
    return self.center.y;
}

- (void)setSam_size:(CGSize)sam_size
{
    CGRect rect = self.frame;
    rect.size = sam_size;
    self.frame = rect;
}
- (CGSize)sam_size
{
    return self.frame.size;
}

- (void)setSam_origin:(CGPoint)sam_origin
{
    CGRect rect = self.frame;
    rect.origin = sam_origin;
    self.frame = rect;
}
- (CGPoint)sam_origin
{
    return self.frame.origin;
}

- (void)setSam_cornerRadius:(CGFloat)sam_cornerRadius
{
    [self.layer setCornerRadius:sam_cornerRadius];
    [self.layer setMasksToBounds:YES];
}
- (CGFloat)sam_cornerRadius
{
    return self.layer.cornerRadius;
}

- (void)setSam_borderColor:(UIColor *)sam_borderColor
{
    [self.layer setBorderColor:sam_borderColor.CGColor];
}
- (UIColor *)sam_borderColor
{
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setSam_borderWidth:(CGFloat)sam_borderWidth
{
    [self.layer setBorderWidth:sam_borderWidth];
}
- (CGFloat)sam_borderWidth
{
    return self.layer.borderWidth;
}


@end
