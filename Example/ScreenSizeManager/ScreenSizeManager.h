//
//  ScreenSizeManager.h
//  CategoryDemo
//
//  Created by 氧车乐 on 2020/6/3.
//  Copyright © 2020 yanbin. All rights reserved.
//

#import <Foundation/Foundation.h>

#define KUIScreenHeight [UIScreen mainScreen].bounds.size.height
#define KUIScreenWidth [UIScreen mainScreen].bounds.size.width
#define kht(height) height*KUIScreenWidth/375

#define YBSize  [ScreenSizeManager shared]

NS_ASSUME_NONNULL_BEGIN

@interface ScreenSizeManager : NSObject

+ (ScreenSizeManager *)shared;

@property (nonatomic,assign,readonly) BOOL isIphoneX;

///64 or 88
@property (nonatomic,assign,readonly) CGFloat top;

/// 0 or 34
@property (nonatomic,assign,readonly) CGFloat bottom;

///20 or 44
@property (nonatomic,assign,readonly) CGFloat navTop;

///44 or 78
@property (nonatomic,assign,readonly) CGFloat navBottom;

/// 屏幕长度
@property (nonatomic,assign,readonly) CGFloat width;

/// 屏幕宽度
@property (nonatomic,assign,readonly) CGFloat height;

@property (nonatomic,assign,readonly) CGFloat withSize;
@property (nonatomic,assign,readonly) CGFloat heightSize;


-(void)setTable:(UITableView *)tableView;

-(UIColor *)getColor:(NSInteger)rgbValue;

@end

NS_ASSUME_NONNULL_END
