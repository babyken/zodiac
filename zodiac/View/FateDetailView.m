//
//  FateDetailView.m
//  zodiac
//
//  Created by Tony Zander on 3/17/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import "FateDetailView.h"

@interface FateDetailView ()

@property (strong, nonatomic) UIScrollView *scrlView;

@end


@implementation FateDetailView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor =[UIColor clearColor];
        
        _scrlView = [[UIScrollView alloc] initWithFrame:(CGRect){{0, 0}, frame.size}];
        _scrlView.backgroundColor = [UIColor clearColor];
        _debugTextView = [[UITextView alloc] initWithFrame:(CGRect){{0, 0}, frame.size}];
        _debugTextView.editable = NO;
        _debugTextView.backgroundColor = [UIColor clearColor];
        _debugTextView.textColor = [UIColor whiteColor];
        
        [_scrlView addSubview:_debugTextView];
        [self addSubview:_scrlView];
    }
    return self;
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
