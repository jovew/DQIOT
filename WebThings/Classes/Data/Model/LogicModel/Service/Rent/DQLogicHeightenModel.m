//
//  DQLogicHeightenModel.m
//  WebThings
//  服务流加高逻辑处理类
//  Created by Heidi on 2017/9/26.
//  Copyright © 2017年 machinsight. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DQLogicHeightenModel.h"

@implementation DQLogicHeightenModel

#pragma mark - Getter
- (NSString *)cellIdentifier {
    NSInteger stateID = self.cellData.enumstateid;
    
    if (stateID == 27 || stateID == 28) {
        return @"DQRefuteBackCell";
    }
    return [super cellIdentifier];
}

// 当前业务展示界面的高度
- (CGFloat)cellHeight {
    NSInteger stateID = self.cellData.enumstateid;

    if (stateID == 27 || stateID == 28) {
        return 76 + 16;
    }
    return 44.0f;
}

/** 按钮标题 */
- (NSString *)titleForButton {
    return @"新增服务要求列表";
}

/** 按钮icon */
- (NSString *)iconNameForButton {
    return @"ic_create";
}

@end