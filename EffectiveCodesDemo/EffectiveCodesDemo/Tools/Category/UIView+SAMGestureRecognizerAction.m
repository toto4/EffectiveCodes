//
//  UIView+SAMGestureRecognizerAction.m
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/21.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import "UIView+SAMGestureRecognizerAction.h"
#import <objc/runtime.h>


static const void *kLongPressActionKey          = &kLongPressActionKey;
static const void *kSwipeActionKey              = &kSwipeActionKey;
static const void *kPinchActionKey              = &kPinchActionKey;
static const void *kTapActionKey                = &kTapActionKey;
static const void *kPanActionKey                = &kPanActionKey;
static const void *kRotationActionKey           = &kRotationActionKey;



@implementation UIView (SAMGestureRecognizerAction)

- (void)setSam_tapAction:(void (^)(UITapGestureRecognizer * _Nonnull))sam_tapAction
{
    objc_setAssociatedObject(self, kTapActionKey, sam_tapAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(handleGestureRecognizer:)];
    
    [self addGestureRecognizer:tap];
}
- (void (^)(UITapGestureRecognizer * _Nonnull))sam_tapAction
{
    return objc_getAssociatedObject(self, kTapActionKey);
}

- (void)setSam_longPressAction:(void (^)(UILongPressGestureRecognizer * _Nonnull))sam_longPressAction
{
    objc_setAssociatedObject(self, kLongPressActionKey, sam_longPressAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc] initWithTarget:self
                                                                                            action:@selector(handleGestureRecognizer:)];
    
    [self addGestureRecognizer:longPress];
}
- (void (^)(UILongPressGestureRecognizer * _Nonnull))sam_longPressAction
{
    return objc_getAssociatedObject(self, kLongPressActionKey);
}

- (void)setSam_swipeAction:(void (^)(UISwipeGestureRecognizer * _Nonnull))sam_swipeAction
{
    objc_setAssociatedObject(self, kSwipeActionKey, sam_swipeAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
    
    UISwipeGestureRecognizer *swipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(handleGestureRecognizer:)];
    
    swipe.direction = UISwipeGestureRecognizerDirectionRight | UISwipeGestureRecognizerDirectionLeft;
    
    [self addGestureRecognizer:swipe];
}
- (void (^)(UISwipeGestureRecognizer * _Nonnull))sam_swipeAction
{
    return objc_getAssociatedObject(self, kSwipeActionKey);
}

- (void)setSam_pinchAction:(void (^)(UIPinchGestureRecognizer * _Nonnull))sam_pinchAction
{
    objc_setAssociatedObject(self, kPinchActionKey, sam_pinchAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc] initWithTarget:self
                                                                                action:@selector(handleGestureRecognizer:)];
    
    pinch.scale = 0.5;
    [self addGestureRecognizer:pinch];
}
- (void (^)(UIPinchGestureRecognizer * _Nonnull))sam_pinchAction
{
    return objc_getAssociatedObject(self, kPinchActionKey);
}

- (void)setSam_panAction:(void (^)(UIPanGestureRecognizer * _Nonnull))sam_panAction
{
    objc_setAssociatedObject(self, kPanActionKey, sam_panAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(handleGestureRecognizer:)];
    
    [self addGestureRecognizer:pan];
}
- (void (^)(UIPanGestureRecognizer * _Nonnull))sam_panAction
{
    return objc_getAssociatedObject(self, kPanActionKey);
}

- (void)setSam_rotationAction:(void (^)(UIRotationGestureRecognizer * _Nonnull))sam_rotationAction
{
    objc_setAssociatedObject(self, kRotationActionKey, sam_rotationAction, OBJC_ASSOCIATION_COPY_NONATOMIC);
    UIRotationGestureRecognizer *rotation = [[UIRotationGestureRecognizer alloc] initWithTarget:self
                                                                                         action:@selector(handleGestureRecognizer:)];
    
    [self addGestureRecognizer:rotation];
}
- (void (^)(UIRotationGestureRecognizer * _Nonnull))sam_rotationAction
{
    return objc_getAssociatedObject(self, kRotationActionKey);
}


#pragma mark -

- (void)handleGestureRecognizer:(UIGestureRecognizer *)gestureRecognizer
{
    if ([gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]]) {
        
        if (self.sam_tapAction) {
            self.sam_tapAction((UITapGestureRecognizer *)gestureRecognizer);
        }
        
    }
    
    if ([gestureRecognizer isKindOfClass:[UILongPressGestureRecognizer class]]) {
        
        if (self.sam_longPressAction) {
            self.sam_longPressAction((UILongPressGestureRecognizer *)gestureRecognizer);
        }
        
    }
    
    if ([gestureRecognizer isKindOfClass:[UISwipeGestureRecognizer class]]) {
        
        if (self.sam_swipeAction) {
            self.sam_swipeAction((UISwipeGestureRecognizer *)gestureRecognizer);
        }
        
    }
    
    if ([gestureRecognizer isKindOfClass:[UIPinchGestureRecognizer class]]) {
        
        if (self.sam_pinchAction) {
            self.sam_pinchAction((UIPinchGestureRecognizer *)gestureRecognizer);
        }
        
    }
    
    if ([gestureRecognizer isKindOfClass:[UIPanGestureRecognizer class]]) {
        
        if (self.sam_panAction) {
            self.sam_panAction((UIPanGestureRecognizer *)gestureRecognizer);
        }
        
    }
    
    
    if ([gestureRecognizer isKindOfClass:[UIRotationGestureRecognizer class]]) {
        
        if (self.sam_rotationAction) {
            self.sam_rotationAction((UIRotationGestureRecognizer *)gestureRecognizer);
        }
        
    }
    
}




@end






