//
//  SAMDBHelper.h
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/18.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import <UIKit/UIKit.h>




@class FMResultSet,FMDatabaseQueue;



BOOL isDBStringEmpty(NSString *DBString);


/** nil 转 @"" */
NSString * dbStringConverter(NSString *string);
/** @"" 转 nil */
NSString * dbStringReverse(NSString *string);

// YES 转 1；NO 转 0
NSInteger dbBooleanConverter(BOOL boolean);

// 1 转 YES；0 转 NO
BOOL dbBooleanReverse(NSInteger i);


#pragma mark --- db helper
/** 开启事物执行update操作 */
BOOL sam_updateUsingTransactionInDataBase(FMDatabaseQueue *dbQueue,NSString *sql);
BOOL sam_updateArrayUsingTransactionInDataBase(FMDatabaseQueue *dbQueue,NSArray<NSString *> *arrayOfSql);

/** query */
BOOL sam_queryResultInDataBase(FMDatabaseQueue *dbQueue,NSString *sql, void(^resultBlock)(FMResultSet *resultSet));




#pragma mark - DBQueue Extension


@interface UIApplication (SAMDBExtension)

@property(nonatomic , strong) FMDatabaseQueue * userDBQueue;

@property(nonatomic , strong) FMDatabaseQueue * publicDBQueue;



#pragma mark - setup DB Queue

// Call this method in 'application:didFinishLaunchingWithOptions:'
- (void)sam_setupUserDBQueueWithDBPath:(NSString *)DBPathString;

// Call this method in 'application:didFinishLaunchingWithOptions:'
- (void)sam_setupPublicDBQueueWithDBPath:(NSString *)DBPathString;



@end




