//
//  ZodiacDetailViewController.m
//  zodiac
//
//  Created by Ken Hui on 4/1/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import "ZodiacDetailViewController.h"
#import "WebdataParser.h"
#import <MBProgressHUD/MBProgressHUD.h>

@interface ZodiacDetailViewController ()
{
    MBProgressHUD *_hud;
}

@property (strong, nonatomic)UIWebView *zodiacInfoWebView;

@end

@implementation ZodiacDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        _linkURL = @"";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")) {
        [self setNeedsStatusBarAppearanceUpdate];
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    
    self.view.backgroundColor = [UIColor blackColor];
    
    CGRect bounds = self.view.bounds;
    
    _zodiacInfoWebView = [[UIWebView alloc] initWithFrame:(CGRect){{0, 0}, {bounds.size.width,bounds.size.height - 44}}];
    _zodiacInfoWebView.backgroundColor = [UIColor clearColor];
    _zodiacInfoWebView.opaque = NO;
    [self.view addSubview:_zodiacInfoWebView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)setLink:(NSString *)linkURL
{
    _linkURL = linkURL;
    
    _hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    
    _hud.labelText = @"下載中";
    
    if (_type == 1) {
        [[WebdataParser sharedParser]htmlParserForDailyHoroscope:linkURL Completion:^(id result) {
                        
            [_zodiacInfoWebView loadHTMLString:result baseURL:nil];
            [_hud hide:YES];
            
        } failure:^(NSError *error) {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"网络好像不给力..."
                                                                message:[error localizedDescription]
                                                               delegate:nil
                                                      cancelButtonTitle:@"知道了"
                                                      otherButtonTitles:nil];
            [alertView show];
        }];
    }
    
    else {
        [[WebdataParser sharedParser] htmlParserForWeeklyOrMonthlyHoroscope:linkURL page:1 initialStr:@"" Completion:^(id result) {
            [_zodiacInfoWebView loadHTMLString:result baseURL:nil];
            [_hud hide:YES];
        } failure:^(NSError *error) {
            UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"网络好像不给力..."
                                                                message:[error localizedDescription]
                                                               delegate:nil
                                                      cancelButtonTitle:@"知道了"
                                                      otherButtonTitles:nil];
            [alertView show];
        }];
    }
}

@end
