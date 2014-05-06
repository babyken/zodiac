//
//  MainTableViewCell.m
//  zodiac
//
//  Created by bhliu on 14-4-1.
//  Copyright (c) 2014年 huis. All rights reserved.
//

#import "MainTableViewCell.h"

@implementation MainTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel.backgroundColor = [UIColor clearColor];
        [self.contentView addSubview:_titleLabel];
        _titleLabel.textColor = [UIColor whiteColor];
        _titleLabel.numberOfLines = 0;
        _titleLabel.lineBreakMode = NSLineBreakByWordWrapping;
        _titleLabel.font = [UIFont systemFontOfSize:16];
        
        _line = [[UIView alloc] initWithFrame:CGRectZero];
        _line.backgroundColor = [UIColor colorWithWhite:1 alpha:.6];
        [self.contentView addSubview:_line];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
    if (selected) {
        _titleLabel.textColor = [UIColor lightGrayColor];
    }
    else {
        _titleLabel.textColor = [UIColor whiteColor];
    }
}

- (void)setTitle:(NSString*)title
{
    CGSize size = [self getTextSize:title];
    _titleLabel.frame = CGRectMake(20, 10, 280, size.height);
    _titleLabel.text = title;
    [_titleLabel sizeToFit];
    
    _titleLabel.center = CGPointMake(self.frame.size.width/2 ,_titleLabel.center.y);
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    
    _line.frame = CGRectMake(20, CGRectGetMaxY(_titleLabel.frame)+ 9, 280, 1);
}

- (CGSize)getTextSize:(NSString*)text
{
    CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:20]
                   constrainedToSize:CGSizeMake(320, 200)
                       lineBreakMode:NSLineBreakByWordWrapping];
    return size;
}

@end
