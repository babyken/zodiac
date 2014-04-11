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
}

- (void)setTitle:(NSString*)title
{
    CGSize size = [self getTextSize:title];
    _titleLabel.frame = CGRectMake(20, 5, 280, size.height);
    _titleLabel.text = title;
    [_titleLabel sizeToFit];
}

- (CGSize)getTextSize:(NSString*)text
{
    CGSize size = [text sizeWithFont:[UIFont systemFontOfSize:20]
                   constrainedToSize:CGSizeMake(320, 200)
                       lineBreakMode:NSLineBreakByWordWrapping];
    return size;
}

@end
