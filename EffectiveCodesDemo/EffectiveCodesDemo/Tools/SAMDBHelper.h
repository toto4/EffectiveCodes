//
//  SAMDBHelper.h
//  EffectiveCodesDemo
//
//  Created by wangyongzhen sam on 2016/12/18.
//  Copyright © 2016年 samPersonal. All rights reserved.
//

#import <UIKit/UIKit.h>

@class FMResultSet,FMDatabaseQueue;

@interface UIApplication (SAMDBExtension)

@property(nonatomic , strong) FMDatabaseQueue * userDBQueue;

@property(nonatomic , strong) FMDatabaseQueue * publicDBQueue;



#pragma mark - setup DB Queue

// Call this method in 'application:didFinishLaunchingWithOptions:'
- (void)sam_setupUserDBQueueWithDBPath:(NSString *)DBPathString;

// Call this method in 'application:didFinishLaunchingWithOptions:'
- (void)sam_setupPublicDBQueueWithDBPath:(NSString *)DBPathString;



@end




BOOL isDBStringEmpty(NSString *DBString);



/** nil 转 @"" */
NSString * dbStringConverter(NSString *string);
/** @"" 转 nil */
NSString * dbStringReverse(NSString *string);

// YES 转 1；NO 转 0
NSInteger dbBooleanConverter(BOOL boolean);

// 1 转 YES；0 转 NO
BOOL dbBooleanReverse(NSInteger i);


