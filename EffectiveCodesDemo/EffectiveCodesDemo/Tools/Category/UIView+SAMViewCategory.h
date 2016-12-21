//
//  UIView+SAMViewCategory.h
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/20.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SAMViewCategory)

/** view x  */
@property(nonatomic , assign) CGFloat sam_x;

/** view y */
@property(nonatomic , assign) CGFloat sam_y;

/** view width */
@property(nonatomic , assign) CGFloat sam_width;

/** view height */
@property(nonatomic , assign) CGFloat sam_height;

/** view top */
@property(nonatomic , assign) CGFloat sam_top;

/** view left */
@property(nonatomic , assign) CGFloat sam_left;

/** view bottom */
@property(nonatomic , assign) CGFloat sam_bottom;

/** view right */
@property(nonatomic , assign) CGFloat sam_right;

/** view center x */
@property(nonatomic , assign) CGFloat sam_center_x;

/** view center y */
@property(nonatomic , assign) CGFloat sam_center_y;

/** view size */
@property(nonatomic , assign) CGSize sam_size;

/** view origin */
@property(nonatomic , assign) CGPoint sam_origin;



/**
 *  一个View 改变边角的样式 layer 的 cornerRadius
 */
@property (nonatomic, assign) IBInspectable  CGFloat sam_cornerRadius;

/**
 *  一个View 改变边角的颜色
 */
@property (nonatomic, strong) IBInspectable UIColor *sam_borderColor;

/**
 *  一个View 边框的宽度
 */
@property (nonatomic, assign) IBInspectable CGFloat sam_borderWidth;





@end
