//
//  zodiacViewController.m
//  zodiac
//
//  Created by Ken Hui on 3/10/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import "MainViewController.h"
#import "zodiacAppDelegate.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // init and adding the NavigationBar to the self.view
//    [self.view addSubview:self.navTitleBar];
    
    //TODO: REMOVE ME LATER Debug use
    self.view.backgroundColor = [UIColor greenColor];
    
    UIBarButtonItem *barBackButton = [[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStyleDone target:self action:@selector(menuBtnPress:)];
    [self.navigationItem setLeftBarButtonItem:barBackButton];
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

#pragma mark -
#pragma mark UI IBAction / Callback
- (void)menuBtnPress:(UIBarButtonItem*)sender {
    zodiacAppDelegate *appDelegate = (zodiacAppDelegate*)[[UIApplication sharedApplication] delegate];
    [appDelegate.drawerController toggleDrawerSide:MMDrawerSideLeft animated:YES completion:nil];
}


@end
