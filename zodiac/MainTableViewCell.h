//
//  MainTableViewCell.h
//  zodiac
//
//  Created by bhliu on 14-4-1.
//  Copyright (c) 2014年 huis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainTableViewCell : UITableViewCell

@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UIView *line;

- (void)setTitle:(NSString*)title;

@end
