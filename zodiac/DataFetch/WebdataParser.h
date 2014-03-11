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

/* 日运html解析 
 *@params: 
       url: 日运地址
completion: result为拼装好的html str
 */
- (void)htmlParserForDailyHoroscope:(NSString*)url
                         Completion:(void(^)(id result))completion
                            failure:(void(^)(NSError *error))failure;

/* 周运/月运html解析
 *@params:
 url: 周运/月运地址
 page: 为了应对分页情况 初始值应为1
 initialStr: 为了应对分页情况 初始值应为@"" 空字符串
 completion: result为拼装好的html str
 */
- (void)htmlParserForWeeklyOrMonthlyHoroscope:(NSString*)url
                                page:(NSInteger)page
                          initialStr:(NSString*)initHtmlStr
                          Completion:(void(^)(id result))completion
                             failure:(void(^)(NSError *error))failure;

@end
