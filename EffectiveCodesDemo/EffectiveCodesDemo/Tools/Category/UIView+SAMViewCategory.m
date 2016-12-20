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

- (CGFloat)sam_bottom
{
    CGFloat bottom = self.frame.size.height + self.frame.origin.y;
    return bottom;
}



@end
