//
//  PeriodSegmentView.m
//  zodiac
//
//  Created by Tony Zander on 3/17/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import "PeriodSegmentView.h"

@interface PeriodSegmentView ()

@property (strong, nonatomic) UISegmentedControl *segmentControl;

- (void)resetTheSegmentImage;

@end

@implementation PeriodSegmentView


- (id)initWithFrame:(CGRect)frame andSegmentTarget:(id)target withAction:(SEL)action
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor blackColor];
        
        UIImageView *imgViewBg = [[UIImageView alloc] initWithFrame:(CGRect){{0, 10}, {frame.size.width, 30.0}}];
        [imgViewBg setImage:[UIImage imageNamed:@"main_segment_bg"]];
        [self addSubview:imgViewBg];
        
        NSArray *arySegmentImage = [NSArray arrayWithObjects:[UIImage imageNamed:@"main_segment_day"],
                                    [UIImage imageNamed:@"main_segment_week"],
                                    [UIImage imageNamed:@"main_segment_month"], nil];


//        NSArray *arySegmentImage = [NSArray arrayWithObjects:@"01", @"02", @"03", nil];
        
        // Segment control
        _segmentControl = [[UISegmentedControl alloc] initWithItems:arySegmentImage];
        [_segmentControl addTarget:target action:action forControlEvents:UIControlEventValueChanged];
        _segmentControl.frame = (CGRect){{0, 0}, {frame.size.width, 62.5}};
        [self fixImagesOfSegmentedControlForiOS7];
        [self addSubview:_segmentControl];
        
    }
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        UIImageView *imgViewBg = [[UIImageView alloc] initWithFrame:(CGRect){{0, 0}, frame.size}];
        [imgViewBg setImage:[UIImage imageNamed:@"main_segment_bg"]];
        [self addSubview:imgViewBg];
       
        NSArray *arySegmentImage = [NSArray arrayWithObjects:   [UIImage imageNamed:@"main_segment_day_highlight"],
                                    [UIImage imageNamed:@"main_segment_week"],
                                    [UIImage imageNamed:@"main_segment_month"], nil];
        
        // Segment control
        _segmentControl = [[UISegmentedControl alloc] initWithItems:arySegmentImage];
        _segmentControl.frame = (CGRect){{0, 0}, frame.size};
        [self addSubview:_segmentControl];
        
    }
    return self;
}

- (void)fixImagesOfSegmentedControlForiOS7
{
    NSInteger deviceVersion = [[UIDevice currentDevice] systemVersion].integerValue;
    if(deviceVersion < 7) // If this is not an iOS 7 device, we do not need to perform these customizations.
        return;
    
    for(int i=0;i<self.segmentControl.numberOfSegments;i++)
    {
        UIImage* img = [self.segmentControl imageForSegmentAtIndex:i];
        UIImage* goodImg = [img imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        // clone image with different rendering mode
        [self.segmentControl setImage:goodImg forSegmentAtIndex:i];
    }
    
    self.segmentControl.tintColor = [UIColor clearColor];
}

- (void)highlgihtSegmentWithIndex:(int)index {
    
    UIImage *highlightImage = nil;
    
    
    switch (index) {
        case 0:
            highlightImage = [UIImage imageNamed:@"main_segment_day_highlight"];
        
            break;
        case 1:
            highlightImage = [UIImage imageNamed:@"main_segment_week_highlight"];
        
            break;
        case 2:
            highlightImage = [UIImage imageNamed:@"main_segment_month_highlight"];
            
            break;
            
        default:
            break;
    }
    
    [self resetTheSegmentImage];
    [self.segmentControl setImage:highlightImage forSegmentAtIndex:index];
    [self fixImagesOfSegmentedControlForiOS7];
}

- (void)resetTheSegmentImage {
    [self.segmentControl setImage:[UIImage imageNamed:@"main_segment_day"] forSegmentAtIndex:0];
    [self.segmentControl setImage:[UIImage imageNamed:@"main_segment_week"] forSegmentAtIndex:1];
    [self.segmentControl setImage:[UIImage imageNamed:@"main_segment_month"] forSegmentAtIndex:2];
    
    [self fixImagesOfSegmentedControlForiOS7];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
