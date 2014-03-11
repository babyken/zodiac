//
//  zodiacAppDelegate.m
//  zodiac
//
//  Created by Ken Hui on 3/10/14.
//  Copyright (c) 2014 huis. All rights reserved.
//



#import "zodiacAppDelegate.h"

#import "MainViewController.h"
#import "ZodiacSelectViewController.h"
#import "WebdataParser.h"

@interface zodiacAppDelegate ()


@end


@implementation zodiacAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

    // Override point for customization after application launch.
    [[WebdataParser sharedParser]htmlParserForWeeklyOrMonthlyHoroscope:@"http://www.meiguoshenpo.com/MeiYue/d87886.html" page:1 initialStr:@"" Completion:^(id result) {
        NSLog(@"%@",result);
    } failure:^(NSError *error) {
        
    } ];

    
    // Override the storyboard
    
    MainViewController *mainCenterVC = [[MainViewController alloc] initWithNibName:nil bundle:nil];
    ZodiacSelectViewController *selectLeftVC = [[ZodiacSelectViewController alloc] initWithNibName:nil bundle:nil];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:mainCenterVC];

    self.drawerController = [[MMDrawerController alloc] initWithCenterViewController:navigationController
                                                            leftDrawerViewController:selectLeftVC];
    
    [self.drawerController setOpenDrawerGestureModeMask:MMOpenDrawerGestureModeAll];
    [self.drawerController setCloseDrawerGestureModeMask:MMCloseDrawerGestureModeAll];
    
//    [self.drawerController
//     setDrawerVisualStateBlock:^(MMDrawerController *drawerController, MMDrawerSide drawerSide, CGFloat percentVisible) {
//         MMDrawerControllerDrawerVisualStateBlock block;
//         block = [[MMExampleDrawerVisualStateManager sharedManager]
//                  drawerVisualStateBlockForDrawerSide:drawerSide];
//         if(block){
//             block(drawerController, drawerSide, percentVisible);
//         }
//     }];
    

    if(SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"7.0")) {
        UIColor * tintColor = [UIColor colorWithRed:29.0/255.0
                                              green:173.0/255.0
                                               blue:234.0/255.0
                                              alpha:1.0];
        [self.window setTintColor:tintColor];
    }
    
    self.window.rootViewController = self.drawerController;

    [self.window makeKeyAndVisible];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
