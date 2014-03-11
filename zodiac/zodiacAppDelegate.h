//
//  zodiacAppDelegate.h
//  zodiac
//
//  Created by Ken Hui on 3/10/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MMDrawerController.h>

@interface ZodiacAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) MMDrawerController *drawerController;

@end
