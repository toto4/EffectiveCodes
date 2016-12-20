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


#pragma mark --- db helper

BOOL sam_updateUsingTransactionInDataBase(FMDatabaseQueue *dbQueue,NSString *sql)
{

    if(0 == sql.length) {
        return NO;
    }
    
    __block BOOL isSuccess = YES;
    [dbQueue inTransaction:^(FMDatabase *db, BOOL *rollback) {
        BOOL sucess = [db executeUpdate:sql];
        if(!sucess) {
            isSuccess = NO;
            *rollback = YES;    // 没有成功，回滚
        }
    }];
    
    return isSuccess;
}

BOOL sam_updateArrayUsingTransactionInDataBase(FMDatabaseQueue *dbQueue,NSArray<NSString *> *arrayOfSql)
{
    if(nil == arrayOfSql || 0 == arrayOfSql.count) {
        return NO;
    }
    
    __block BOOL isSuccess = YES;
    [dbQueue inTransaction:^(FMDatabase *db, BOOL *rollback) {
        BOOL success = NO;
        for(NSString *sql in arrayOfSql) {
            if(sql != nil && sql.length) {
                success = [db executeUpdate:sql];
                if(!success) {
                    break;
                }
            }
        }
        
        if(!success) {
            isSuccess = NO;
            *rollback = YES;
        }
    }];
    
    return isSuccess;
}

BOOL sam_queryResultInDataBase(FMDatabaseQueue *dbQueue,NSString *sql, void(^resultBlock)(FMResultSet *resultSet))
{
    
    if(0 == sql.length) {
        return NO;
    }
    
    __block FMResultSet *resultSet = nil;
    __block BOOL success = YES;
    [dbQueue inDatabase:^(FMDatabase *db) {
        resultSet = [db executeQuery:sql];
        if(resultSet == nil) {  // 发生错误
            success = NO;
            return;
        }
        
        resultBlock(resultSet);
        [resultSet close];
    }];
    
    return success;
}


