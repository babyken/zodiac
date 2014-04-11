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
static const NSString* baseUrl = @"http://www.meiguoshenpo.com";

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

- (void)fetchHoroscopesWithSign:(int)sign type:(int)type Completion:(void(^)(id result))completion
{
    NSString *string = [NSString stringWithFormat:@"http://115.28.47.11/xingzuo/%@/YunShi_%d.json",zodiacs[sign],type];
    NSURL *url = [NSURL URLWithString:string];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    

    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        if (completion) {
            completion(responseObject);
        }
        
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

- (void)htmlParserForDailyHoroscope:(NSString*)url
                         Completion:(void(^)(id result))completion
                            failure:(void(^)(NSError *error))failure

{
    __block NSString *htmlStr = @"";
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id result) {
        
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
            NSString *title = [div_dtl_hd1 firstChildWithTag:@"h1"].stringValue;

            // the second div'dtl_hdt' where the contents are
            ONOXMLElement *div_dtl_hd2 = div_box_dtl_648.children[1];
            NSArray *p = [div_dtl_hd2 childrenWithTag:@"p"];
            NSString * content = [[p subarrayWithRange:NSMakeRange(0, p.count - 2)] componentsJoinedByString:@""];
            content = [self stringByStrippingHrefFrom:content];
            
            htmlStr = [NSString stringWithFormat:@"<div>%@</div><div>%@</div>",title,content];
            
            htmlStr = [htmlStr stringByReplacingOccurrencesOfString:@"(星座www.meiguoshenpo.com)" withString:@""];
            
            if (completion) {
                
                NSString *bodyHead = @"<body style=\"color:#efefef;background-color:black;\">";
                NSString *bodyFoot = @"</body>";
                
                htmlStr = [NSString stringWithFormat:@"%@ %@ %@",bodyHead, htmlStr,bodyFoot];
                
                completion(htmlStr);
            }
        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
    }];
}

- (void)htmlParserForWeeklyOrMonthlyHoroscope:(NSString*)url
                                page:(NSInteger)page
                          initialStr:(NSString*)initHtmlStr
                         Completion:(void(^)(id result))completion
                            failure:(void(^)(NSError *error))failure
{
    __block NSString *htmlStr = initHtmlStr;
    NSInteger nextPage = page + 1;
    
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:url parameters:nil success:^(AFHTTPRequestOperation *operation, id result)
    {
        
        if (result != nil)
        {
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
            NSString *title = [div_dtl_hd1 firstChildWithTag:@"h1"].stringValue;
            
            // the second div'dtl_hdt' where the contents are
            ONOXMLElement *div_dtl_hd2 = div_box_dtl_648.children[1];
            NSArray *p = [div_dtl_hd2 childrenWithTag:@"p"];
            // if page>=2, the first p tag contains "● 苏珊米勒2014年3月金牛座运势完整版【第2页】" which we don't want
            NSString * content = [[p subarrayWithRange:NSMakeRange(page == 1?0:1, p.count - 2)] componentsJoinedByString:@""];
            content = [self stringByStrippingHrefFrom:content];
            
            @autoreleasepool
            {
                __block NSArray *atagArray = [NSArray array];
                [div_dtl_hd2 enumerateElementsWithXPath:@"//div[@class='art_show_page']" block:^(ONOXMLElement *element) {
                    atagArray = [element childrenWithTag:@"a"];
                }];
                
                htmlStr = [NSString stringWithFormat:@"<div>%@</div><div>%@</div>",page == 1?title:@"",content];
                htmlStr = [NSString stringWithFormat:@"%@%@",initHtmlStr,htmlStr]; //把上一页和本页合并
                
                htmlStr = [htmlStr stringByReplacingOccurrencesOfString:@"(星座www.meiguoshenpo.com)" withString:@""];
                
                if (atagArray.count == 0 || page == atagArray.count) {
                    if (completion) {
                        
                        NSString *bodyHead = @"<body style=\"color:#efefef;background-color:black;\">";
                        NSString *bodyFoot = @"</body>";
                        
                        htmlStr = [NSString stringWithFormat:@"%@ %@ %@",bodyHead, htmlStr,bodyFoot];
                        
                        completion(htmlStr);
                    }
                }
                
                else {
                    ONOXMLElement *a = atagArray[page - 1];
                    NSString *nextUrl = [NSString stringWithFormat:@"%@%@",baseUrl,[a valueForAttribute:@"href"]];
                    [self htmlParserForWeeklyOrMonthlyHoroscope:nextUrl page:nextPage initialStr:htmlStr Completion:completion failure:failure];
                }
            }
            

        }
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (failure) {
            failure(error);
        }
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
