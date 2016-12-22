//
//  UIControl+SAMAddAction.h
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/22.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^action)(UIControl *sender);

@interface UIControl (SAMAddAction)

- (void)sam_addActionForEvents:(UIControlEvents)events aAction:(action)aAction;


@end
