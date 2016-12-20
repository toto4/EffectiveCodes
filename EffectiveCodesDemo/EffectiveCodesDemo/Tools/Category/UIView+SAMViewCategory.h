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

/** view bottom */
@property(nonatomic , assign, readonly) CGFloat sam_bottom;





@end
