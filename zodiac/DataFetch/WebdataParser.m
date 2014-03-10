//
//  WebdataParser.m
//  zodiac
//
//  Created by bhliu on 14-3-10.
//  Copyright (c) 2014年 huis. All rights reserved.
//

#import "WebdataParser.h"
#import <AFNetworking/AFNetworking.h>

static NSArray *zodiacs = nil;

@implementation WebdataParser

+ (id)sharedParser {
    static WebdataParser *sharedMyParser = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyParser = [[self alloc] init];
    });
    return sharedMyParser;
}

- (id)init {
    if (self = [super init]) {
        zodiacs = @[@"BaiYang",@"JinNiu",@"ShuangZi",@"JuXie",@"ShiZi",@"ChuNv",@"TianCheng",@"TianXie",@"SheShou",@"MoJie",@"ShuiPing",@"ShuangYu"];
    }
    return self;
}

- (void)fetchHoroscopesWithSign:(NSString*)sign type:(int)type
{
    NSString *string = [NSString stringWithFormat:@"http://115.28.47.11/xingzuo/%@/YunShi_%d.json",sign,type];
    NSURL *url = [NSURL URLWithString:string];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    

    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSLog(@"%@",responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        

        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"网络好像不给力..."
                                                            message:[error localizedDescription]
                                                           delegate:nil
                                                  cancelButtonTitle:@"知道了"
                                                  otherButtonTitles:nil];
        [alertView show];
    }];
    
    [operation start];
}

@end
