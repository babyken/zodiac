//
//  ZodiacSelectViewController.m
//  zodiac
//
//  Created by Tony Zander on 3/11/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import "ZodiacSelectViewController.h"

@interface ZodiacSelectViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong)NSArray *aryZodiac;

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
    NSLog(@"Betfeeds VC Table frame:  %@",NSStringFromCGRect(tblFrame));
    
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _aryZodiac.count;
}

#pragma mark UITableView Delegate
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = (NSString*)_aryZodiac[indexPath.row];
    return cell;
}


@end
