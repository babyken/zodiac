//
//  WebdataParser.h
//  zodiac
//
//  Created by bhliu on 14-3-10.
//  Copyright (c) 2014年 huis. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WebdataParser : NSObject

+ (id)sharedParser;

/*
 @params: 
 sign: BaiYang,JinNiu,ShuangZi, JuXie,ShiZi,ChuNv,TianCheng,TianXie,SheShou,MoJie,ShuiPing,ShuangYu
 type: 1- 日运 2- 周运 3- 月运
 */
- (void)fetchHoroscopesWithSign:(NSString*)sign type:(int)type;

@end
