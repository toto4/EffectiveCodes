//
//  NSObject+SAMExtension.h
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/21.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (SAMExtension)


/**
 *  交换两个实例方法的实现
 *
 *  @param OriginalSEL 原方法的SEL
 *  @param mySEL       新方法的SEL
 */
+ (void)sam_swizzleInstanceSelecterWithOriginalSEL:(SEL)OriginalSEL mySEL:(SEL)mySEL;

/**
 *  获取当前类的所有属性
 *
 *  @return 返回当前类的所有属性
 */
+ (NSArray *)sam_getProperties;

/**
 *  返回任意对象的字符串形式的内存地址
 */
- (NSString *)sam_address;



@end
