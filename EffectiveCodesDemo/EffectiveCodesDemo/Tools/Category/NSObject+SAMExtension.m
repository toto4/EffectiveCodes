//
//  NSObject+SAMExtension.m
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/21.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import "NSObject+SAMExtension.h"
#import <objc/runtime.h>

@implementation NSObject (SAMExtension)
+ (void)sam_swizzleInstanceSelecterWithOriginalSEL:(SEL)OriginalSEL mySEL:(SEL)mySEL
{
    Class cls = [self class];
    
    Method originalMethod = class_getInstanceMethod(cls, OriginalSEL);
    Method myMethod = class_getInstanceMethod(cls, mySEL);
    
    BOOL isMethodAddedSucceed = class_addMethod(cls, OriginalSEL, method_getImplementation(myMethod), method_getTypeEncoding(myMethod));
    
    if (isMethodAddedSucceed){
        
        class_replaceMethod(cls, mySEL, method_getImplementation(originalMethod), method_getTypeEncoding(originalMethod));
    }else{
        method_exchangeImplementations(originalMethod, myMethod);
    }
}

+ (NSArray *)sam_getProperties
{
    unsigned int outCount = 0;
    
    objc_property_t *properties = class_copyPropertyList(self, &outCount);
    
    NSMutableArray *arrM = [NSMutableArray array];
    
    for (NSInteger i = 0 ; i < outCount ; ++i) {
        
        objc_property_t property = properties[i];
        
        const char *cName = property_getName(property);
        
        NSString *name = [NSString stringWithCString:cName encoding:NSUTF8StringEncoding];
        
        [arrM addObject:name];
    }
    
    free(properties);
    
    return [arrM copy];
}

- (NSString *)sam_address
{
    return [NSString stringWithFormat:@"%p",self];
}

@end
