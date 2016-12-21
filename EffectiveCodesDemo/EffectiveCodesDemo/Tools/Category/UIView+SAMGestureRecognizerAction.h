//
//  UIView+SAMGestureRecognizerAction.h
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/21.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (SAMGestureRecognizerAction)


@property (nullable , nonatomic , copy) void(^sam_tapAction)(UITapGestureRecognizer *_Nonnull tapGestureRecognizer);

@property (nullable , nonatomic , copy) void(^sam_longPressAction)(UILongPressGestureRecognizer *_Nonnull lonePressGestureRecognizer);

/**  Right  Left */
@property (nullable , nonatomic , copy) void(^sam_swipeAction)(UISwipeGestureRecognizer *_Nonnull swipeGestureRecognizer);

@property (nullable , nonatomic , copy) void(^sam_pinchAction)(UIPinchGestureRecognizer *_Nonnull pinchGestureRecognizer);

@property (nullable , nonatomic , copy) void(^sam_panAction)(UIPanGestureRecognizer *_Nonnull panGestureRecognizer);

@property (nullable , nonatomic , copy) void(^sam_rotationAction)(UIRotationGestureRecognizer *_Nonnull rotationGestureRecognizer);



@end
