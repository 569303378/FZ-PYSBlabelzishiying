//
//  Model.h
//  PYzishiyingTableView
//
//  Created by Apple on 16/7/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Model : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *detail;
@property(nonatomic, assign) CGFloat detailLabelHeight; /**< 行高 */

+ (id)buildModelWithDic:(NSDictionary *)dic;
@end
