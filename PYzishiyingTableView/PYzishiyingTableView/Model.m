//
//  Model.m
//  PYzishiyingTableView
//
//  Created by Apple on 16/7/16.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "Model.h"

@implementation Model
+ (id)buildModelWithDic:(NSDictionary *)dic {
    return [[Model alloc] initWithDic:dic];
}
- (id)initWithDic:(NSDictionary *)dic {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dic];
    }
    return self;
}
- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
    
}

- (void)setDetail:(NSString *)detail {
    self.detail = nil;
    _detail = detail;
    CGFloat width = [UIScreen mainScreen].bounds.size.width - 16;
    
}
@end
