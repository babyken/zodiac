//
//  ZodiacDetailViewController.h
//  zodiac
//
//  Created by Ken Hui on 4/1/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZodiacDetailViewController : UIViewController

@property (nonatomic,strong,setter = setLink:) NSString* linkURL;
@property (nonatomic,readwrite) int type;

@end
