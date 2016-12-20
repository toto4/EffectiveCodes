//
//  SAMDBHelper.m
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/18.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import "SAMDBHelper.h"

#import "FMDB.h"
#import <objc/runtime.h>

FMDatabaseQueue * privateDBQueue();
FMDatabaseQueue * publicDBQueue() ;


static const void *kUserDBQueueKey = &kUserDBQueueKey;

static const void *kPublicDBQueueKey = &kPublicDBQueueKey;

@implementation UIApplication (SAMDBExtension)

- (void)sam_setupUserDBQueueWithDBPath:(NSString *)DBPathString
{
    if (nil == DBPathString || 0 == DBPathString.length) {
        return;
    }
    
    FMDatabaseQueue *queue = [[FMDatabaseQueue alloc] initWithPath:DBPathString];
    self.userDBQueue =  queue;
}


- (void)sam_setupPublicDBQueueWithDBPath:(NSString *)DBPathString
{
    if (nil == DBPathString || 0 == DBPathString.length) {
        return;
    }
    
    FMDatabaseQueue *queue = [[FMDatabaseQueue alloc] initWithPath:DBPathString];
    self.publicDBQueue =  queue;
}



#pragma mark - setter & getter

- (void)setUserDBQueue:(FMDatabaseQueue *)userDBQueue
{
    objc_setAssociatedObject(self, kUserDBQueueKey, userDBQueue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (FMDatabaseQueue *)userDBQueue
{
    return objc_getAssociatedObject(self, kUserDBQueueKey);
}


- (void)setPublicDBQueue:(FMDatabaseQueue *)publicDBQueue
{
    objc_setAssociatedObject(self, kPublicDBQueueKey, publicDBQueue, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
- (FMDatabaseQueue *)publicDBQueue
{
    return objc_getAssociatedObject(self, kPublicDBQueueKey);
}


@end


BOOL isDBStringEmpty(NSString *DBString) {
    
    return [DBString isEqualToString:@""] ? YES : NO;
}

NSString * dbStringConverter(NSString *string) {
    
    return string == nil ? @"" : string;
}

NSString * dbStringReverse(NSString *string) {
    
    return [string isEqualToString:@""] ? nil : string;
}

NSInteger dbBooleanConverter(BOOL boolean) {
    
    return boolean ? 1 : 0;
}

BOOL dbBooleanReverse(NSInteger i) {
    
    return i == 0 ? NO : YES;
}

FMDatabaseQueue * privateDBQueue()
{
    return [UIApplication sharedApplication].userDBQueue;
}
FMDatabaseQueue * publicDBQueue()
{
    return [UIApplication sharedApplication].publicDBQueue;
}



