//
//  ZodiacSelectViewController.m
//  zodiac
//
//  Created by Tony Zander on 3/11/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import "ZodiacSelectViewController.h"

@interface ZodiacSelectViewController ()

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

    // for Debug purpose
    UIView *tmpView = [[UIView alloc] initWithFrame:(CGRect){{50.0, 50.0}, {100.0, 100.0}}];
    tmpView.backgroundColor = [UIColor redColor];
    [self.view addSubview:tmpView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
