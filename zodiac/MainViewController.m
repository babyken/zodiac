//
//  zodiacViewController.m
//  zodiac
//
//  Created by Ken Hui on 3/10/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import "MainViewController.h"
#import "ZodiacDetailViewController.h"
#import "ZodiacAppDelegate.h"

#import "PeriodSegmentView.h"
#import "FateDetailView.h"
#import "MainTableViewCell.h"
#import <MBProgressHUD/MBProgressHUD.h>

#import "AdMoGoDelegateProtocol.h" 
#import "AdMoGoView.h" 
#import "AdMoGoWebBrowserControllerUserDelegate.h" 
#import "AdMoGoInterstitial.h"
#import "AdMoGoInterstitialDelegate.h"

#import "WebdataParser.h"

@interface MainViewController () <AdMoGoDelegate,AdMoGoInterstitialDelegate,AdMoGoWebBrowserControllerUserDelegate,UITableViewDataSource,UITableViewDelegate>

@property (nonatomic, strong) PeriodSegmentView *periodSegmentView;
@property (strong, nonatomic) FateDetailView *fateDetailView;
@property (strong, nonatomic) UITableView *tableView;
@property (strong, nonatomic) NSArray *zodiacArray;

@end

static NSArray *zodiacs = nil;

@implementation MainViewController
{
    AdMoGoView *adView;
    AdMoGoInterstitial *interstitial;
    
    MBProgressHUD *_hud;
    
    int currentType;
    int currentSign;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationController.navigationBar.titleTextAttributes = @{NSForegroundColorAttributeName: [UIColor whiteColor],UITextAttributeFont: [UIFont boldSystemFontOfSize:23]};
    
    zodiacs = @[@"白羊",@"金牛",@"双子",@"巨蟹",@"狮子",@"处女",@"天秤",@"天蝎",@"射手",@"摩羯",@"水瓶",@"双鱼"];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(loadWebData:) name:@"LOADZODIAC" object:nil];
    currentType = 1;
    currentSign = 0;
    _zodiacArray = [NSArray array];
    
    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")) {
        [self setNeedsStatusBarAppearanceUpdate];
        self.edgesForExtendedLayout = UIRectEdgeNone;
    }
    

    CGRect bounds = self.view.bounds;
    
    // init and adding the NavigationBar to the self.view
    
    self.view.backgroundColor = [UIColor blackColor];
    
    UIImage *imgBg = [UIImage imageNamed:@"main_bg"];
    UIImageView *imgViewBg = [[UIImageView alloc] initWithFrame:(CGRect){{0.0, bounds.size.height - imgBg.size.height}, imgBg.size}];
    imgViewBg.image = imgBg;
    
    [self.view addSubview:imgViewBg];
    
    
    UIBarButtonItem *barBackButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"nav_bar_btn_menu"]
                                                                      style:UIBarButtonItemStyleDone
                                                                     target:self action:@selector(menuBtnPress:)];

    [self.navigationItem setLeftBarButtonItem:barBackButton];
    
    
    // =========== Segment Control ============
    _periodSegmentView = [[PeriodSegmentView alloc] initWithFrame:(CGRect){{0.0, 0.0}, {bounds.size.width, 53.0}}
                                                                   andSegmentTarget:self
                                                                         withAction:@selector(periodSegmentValueChange:)];
    
    [self.view addSubview:_periodSegmentView];
    
//    _fateDetailView = [[FateDetailView alloc] initWithFrame:(CGRect){{0.0, _periodSegmentView.frame.size.height}, {bounds.size.width, bounds.size.height - _periodSegmentView.frame.size.height}}];
//    
//    [self.view addSubview:_fateDetailView];
    
    // table
    _tableView = [[UITableView alloc]initWithFrame:(CGRect){{0.0, _periodSegmentView.frame.size.height}, {bounds.size.width, bounds.size.height - _periodSegmentView.frame.size.height - 94 }}];
    [self.view addSubview:_tableView];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.backgroundColor = [UIColor clearColor];
    _tableView.opaque = NO;
    
    // initialize data
    self.title = zodiacs[currentSign];
    [[WebdataParser sharedParser] fetchHoroscopesWithSign:currentSign type:currentType Completion:^(id result) {
        _zodiacArray = [NSArray arrayWithArray:result];
        [_tableView reloadData];
    }];
    
    // interstitial ad
    [self performSelector:@selector(initInterstitial) withObject:nil afterDelay:2];

    // banner ad at the bottom
    adView = [[AdMoGoView alloc]initWithAppKey:@"bbefe5c7ba344a0cb1192a1560da404e" adType:AdViewTypeNormalBanner adMoGoViewDelegate:self];
    adView.adWebBrowswerDelegate = self;
    adView.frame = CGRectMake(0, bounds.size.height - 100, 320, 50);
    
    [self.view addSubview:adView];

    // ios7
    if ([self respondsToSelector:@selector(setEdgesForExtendedLayout:)]) {
        [self setEdgesForExtendedLayout:UIRectEdgeNone];
    }
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

#pragma mark -
#pragma mark UI init

// = = = = = = = = = = = = = = = = = = = = = = = = = = = =
// Build the title bar w/o navigation controller

//- (UIView*)navTitleBar {
//    CGFloat headerHeight = SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")?64.0:44.0;
//    
//    //Creating the plain Navigation Bar
//    UINavigationBar *headerView = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, headerHeight)];
//    
//    
//    //The UINavigationItem is neede as a "box" that holds the Buttons or other elements
//    UINavigationItem *buttonCarrier = [[UINavigationItem alloc]initWithTitle:@"Main"];
//    
//    //Creating some buttons:
//    UIBarButtonItem *barBackButton = [[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStyleDone target:self action:@selector(menuBtnPress:)];
//    //    UIBarButtonItem *barDoneButton = [[UIBarButtonItem alloc] initWithTitle:@"Fertig" style:UIBarButtonItemStylePlain target:self action:@selector(signInDonePressed:)];
//    
//    //Putting the Buttons on the Carrier
//    [buttonCarrier setLeftBarButtonItem:barBackButton];
//    //    [buttonCarrier setRightBarButtonItem:barDoneButton];
//    
//    //The NavigationBar accepts those "Carrier" (UINavigationItem) inside an Array
//    NSArray *barItemArray = [[NSArray alloc]initWithObjects:buttonCarrier,nil];
//    
//    // Attaching the Array to the NavigationBar
//    [headerView setItems:barItemArray];
//    
//    return headerView;
//}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (void)initInterstitial
{
    if (interstitial) {
        [interstitial stopInterstitial];
        interstitial = nil;
    }
        interstitial = [[AdMoGoInterstitial alloc]
                        initWithAppKey:@"bbefe5c7ba344a0cb1192a1560da404e"
                        isRefresh:YES
                        adInterval:20
                        adType:AdViewTypeFullScreen
                        adMoGoViewDelegate:self];
        interstitial.adWebBrowswerDelegate = self;
    
}

#pragma mark - notification
- (void)loadWebData:(NSNotification*)sender
{
    [self.navigationController popToRootViewControllerAnimated:NO];
    self.title = zodiacs[currentSign = [sender.object intValue]];
    
    // Loading indicator
    _hud = [MBProgressHUD showHUDAddedTo:self.view animated:YES];

    _hud.labelText = @"下載中";
    
    [[WebdataParser sharedParser] fetchHoroscopesWithSign:currentSign type:(currentType = 1) Completion:^(id result) {
        _zodiacArray = [NSArray arrayWithArray:result];
        [_tableView reloadData];
        [_hud hide:YES];
    }];
}

#pragma mark -
#pragma mark UI IBAction / Callback
- (void)menuBtnPress:(UIBarButtonItem*)sender {
    ZodiacAppDelegate *appDelegate = (ZodiacAppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate.drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}

- (void)periodSegmentValueChange:(UISegmentedControl*)sender {
    
    NSLog(@"value change for segment control");
    currentType = sender.selectedSegmentIndex + 1;
    [[WebdataParser sharedParser] fetchHoroscopesWithSign:currentSign type:currentType Completion:^(id result) {
        _zodiacArray = [NSArray arrayWithArray:result];
        [_tableView reloadData];
    }];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _zodiacArray.count;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString* cell_identifier = @"cell_identifier";
    MainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cell_identifier];
    if (cell == nil) {
        cell = [[MainTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cell_identifier];
    }
    [cell setTitle:_zodiacArray[indexPath.row][@"title"]];
    return cell;
}
#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [self getTextSize:_zodiacArray[indexPath.row][@"title"]].height + 10;
}

- (CGSize)getTextSize:(NSString*)text
{
    CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:20]
                   constrainedToSize:CGSizeMake(300, 200)
                       lineBreakMode:NSLineBreakByWordWrapping];
    return size;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ZodiacDetailViewController *zodiacDetailVC = [[ZodiacDetailViewController alloc] init];
    zodiacDetailVC.type = currentType;
    [zodiacDetailVC setLink:_zodiacArray[indexPath.row][@"link"]];
    [self.navigationController pushViewController:zodiacDetailVC animated:YES];
    
    [self initInterstitial];
}

#pragma mark - AdMoGoDelegate
- (UIViewController*)viewControllerForPresentingModalView
{
    return self;
}

- (UIViewController*)viewControllerForPresentingInterstitialModalView
{
    return self;
}

- (void)adMoGoDidStartAd:(AdMoGoView *)adMoGoView
{
    NSLog(@"广告开始请求回调");
}

- (void)adMoGoDidReceiveAd:(AdMoGoView *)adMoGoView
{
    NSLog(@"广告接收成功回调");
}

- (void)adMoGoDidFailToReceiveAd:(AdMoGoView *)adMoGoView didFailWithError:(NSError *)error
{
     NSLog(@"广告接收失败回调, %@",error);
}

#pragma mark - AdMoGoInterstitialDelegate
- (void)adsMoGoInterstitialAdDidStart{
    NSLog(@"MOGO Full Screen Start");
    
}

- (void)adsMoGoInterstitialAdIsReady{
    NSLog(@"MOGO Full Screen IsReady");
    
}

- (void)adsMoGoInterstitialAdReceivedRequest{
    NSLog(@"MOGO Full Screen Received");
    if ([interstitial isInterstitialReady]) {
        [interstitial present];
    }
}

- (void)adsMoGoInterstitialAdWillPresent{
    NSLog(@"MOGO Full Screen Will Present");
}


- (void)adsMoGoInterstitialAdFailedWithError:(NSError *) error{
    NSLog(@"MOGO Full Screen Failed %@",error);
}


@end
