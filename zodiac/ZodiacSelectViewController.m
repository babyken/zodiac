//
//  ZodiacSelectViewController.m
//  zodiac
//
//  Created by Tony Zander on 3/11/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import "ZodiacSelectViewController.h"
#import "ZodiacAppDelegate.h"
#import "ZodiacTableViewCell.h"
#import "MainViewController.h"

@interface ZodiacSelectViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong)NSArray *aryZodiac;
@property (nonatomic, strong)NSArray *aryZodiacImgName;

@end

@implementation ZodiacSelectViewController

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
    
    _aryZodiac = @[@"白羊座", @"金牛座", @"双子座", @"巨蟹座", @"狮子座", @"处女座", @"天秤座", @"天蝎座", @"射手座", @"摩羯座", @"水瓶座", @"双鱼座"];
    _aryZodiacImgName = @[@"aries", @"taurus", @"gemini", @"cancer", @"leo", @"virgo", @"libra", @"scorpio", @"sagittarius", @"capricorn", @"aquarius", @"pisces"];
    
    [self setupZodiacTable];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setupZodiacTable {
    CGRect bounds = self.view.bounds;
    CGRect tblFrame = CGRectMake(0, 0.0f, CGRectGetWidth(bounds), CGRectGetHeight(bounds));
    
    UITableView* tblZodiac = [[UITableView alloc] initWithFrame:tblFrame style:UITableViewStylePlain];
    tblZodiac.delegate = self;
    tblZodiac.dataSource = self;
    tblZodiac.separatorStyle = UITableViewCellSeparatorStyleNone;
    //    self.tblBetfeeds.backgroundColor = [UIColor whiteColor];
    tblZodiac.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:tblZodiac];
}

#pragma mark -
#pragma mark UITableView DataSource


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"LOADZODIAC" object:@(indexPath.row)];
    ZodiacAppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    
    // Get the main view controller reference
    MainViewController *mainVC = (MainViewController*)appDelegate.drawerController.centerViewController;
    
    // TODO: 冰慧 Main VC reload data here
    // Check is user select another zodiac before reload
    
    [appDelegate.drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _aryZodiac.count;
}

#pragma mark UITableView Delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"ZodiacCell";
    
    ZodiacTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[ZodiacTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    NSString *imgName = [NSString stringWithFormat:@"select_tbl_icon_%@", (NSString*)_aryZodiacImgName[indexPath.row]];
    
    
    cell.zodiacNameLabel.text = (NSString*)_aryZodiac[indexPath.row];
    [cell.zodiacLogoImgView setImage:[UIImage imageNamed:imgName]];
    
    return cell;
}


@end
