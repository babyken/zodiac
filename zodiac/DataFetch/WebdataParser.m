//
//  WebdataParser.m
//  zodiac
//
//  Created by bhliu on 14-3-10.
//  Copyright (c) 2014年 huis. All rights reserved.
//

#import "WebdataParser.h"
#import <AFNetworking/AFNetworking.h>
#import <Ono/Ono.h>

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

- (void)htmlParseForDailyHoroscope
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:@"http://www.meiguoshenpo.com/MeiRi/d88099.html" parameters:nil success:^(AFHTTPRequestOperation *operation, id result) {
        
        if (result != nil) {
            ONOXMLDocument *document = [ONOXMLDocument HTMLDocumentWithData:result error:nil];
            
            // document.rootElement.children 0- head 1- body
            ONOXMLElement *body = document.rootElement.children[1];
            // the second div'box_top_12', which is the seventh tag in body.children
            ONOXMLElement *div_box_top_12 = body.children[6];
            
            // div'fLeft_margin_right_12_width_648' where the title is
            ONOXMLElement *div_fLeft_margin_right_12_width_648 = div_box_top_12.children[0];
            ONOXMLElement *div_box_dtl_648 = [div_fLeft_margin_right_12_width_648 firstChildWithTag:@"div"];
            ONOXMLElement *div_dtl_hd1 = [div_box_dtl_648 firstChildWithTag:@"div"];
            // the first div'dtl_hdt' where the title is <h1>金牛座今日运势2014年3月11日</h1>
            NSLog(@"%@",[div_dtl_hd1 firstChildWithTag:@"h1"]);

            // the second div'dtl_hdt' where the contents are
            ONOXMLElement *div_dtl_hd2 = div_box_dtl_648.children[1];
            NSArray *p = [div_dtl_hd2 childrenWithTag:@"p"];
            NSString * content = [[p subarrayWithRange:NSMakeRange(0, p.count - 2)] componentsJoinedByString:@""];
            NSLog(@"%@",[self stringByStrippingHrefFrom:content]);
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
    }];
}

#pragma mark - private
-(NSString *) stringByStrippingHrefFrom:(NSString*)s
{
    NSRange r;
    while ((r = [s rangeOfString:@"<(img|a)[^>]+>" options:NSRegularExpressionSearch]).location != NSNotFound)
        s = [s stringByReplacingCharactersInRange:r withString:@""];
    return s;
}

@end
