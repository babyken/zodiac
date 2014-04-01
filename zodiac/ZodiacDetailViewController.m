//
//  ZodiacDetailViewController.m
//  zodiac
//
//  Created by Ken Hui on 4/1/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import "ZodiacDetailViewController.h"

@interface ZodiacDetailViewController ()

@property (strong, nonatomic)UIWebView *zodiacInfoWebView;

@end

@implementation ZodiacDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
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
    
    CGRect bounds = self.view.bounds;
    
    _zodiacInfoWebView = [[UIWebView alloc] initWithFrame:(CGRect){{0, 0}, bounds.size}];
    _zodiacInfoWebView.backgroundColor = [UIColor redColor];
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

@end
