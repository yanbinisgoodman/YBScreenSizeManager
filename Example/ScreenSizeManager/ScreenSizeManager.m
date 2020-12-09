//
//  ScreenSizeManager.m
//  CategoryDemo
//
//  Created by 氧车乐 on 2020/6/3.
//  Copyright © 2020 yanbin. All rights reserved.
//

#import "ScreenSizeManager.h"


@implementation ScreenSizeManager


+ (ScreenSizeManager *)shared
{
    static dispatch_once_t once = 0;
    static ScreenSizeManager * manager;
    dispatch_once(&once, ^{
        manager = [[ScreenSizeManager alloc] init];
    });
    return manager;
}


-(BOOL)isIphoneX{
    BOOL isBangsScreen = NO;
    if (@available(iOS 11.0, *)) { \
        UIWindow *window = [UIApplication sharedApplication].keyWindow;//[[UIApplication sharedApplication].windows firstObject];
        isBangsScreen = window.safeAreaInsets.bottom > 0;
    }
    return isBangsScreen;
}

-(CGFloat)top{
    if ([self isIphoneX]) {
        return 88.0;
    }else{
        return 64.0;
    }
}

-(CGFloat)bottom{
    if ([self isIphoneX]) {
        return 34.0;
    }else{
        return 0;
    }
}

-(CGFloat)navTop{
    if ([self isIphoneX]) {
        return 44.0;
    }else{
        return 20.0;
    }
}

- (CGFloat)navBottom{
    if ([self isIphoneX]) {
        return 83.0;
    }else{
        return 49.0;
    }
}

-(CGFloat)width{
    return [UIScreen mainScreen].bounds.size.width;
}

-(CGFloat)height{
    return [UIScreen mainScreen].bounds.size.height;
}


-(CGFloat)withSize{
    return self.width/375;
}

- (CGFloat)heightSize{
    return self.height/667;
}



-(void)setTable:(UITableView *)tableView{
    tableView.backgroundColor = [UIColor whiteColor];
    tableView.separatorColor  = [UIColor whiteColor];
    tableView.showsHorizontalScrollIndicator = NO;
    tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, CGFLOAT_MIN)];
    tableView.tableFooterView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, CGFLOAT_MIN)];
    tableView.estimatedSectionFooterHeight = 0;
    tableView.estimatedSectionHeaderHeight = 0;
    tableView.estimatedRowHeight = 0;
    tableView.showsVerticalScrollIndicator = NO;
    tableView.showsHorizontalScrollIndicator = NO;
    tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
}

-(UIColor *)getColor:(NSInteger)rgbValue{
    return  [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0];
}


@end
