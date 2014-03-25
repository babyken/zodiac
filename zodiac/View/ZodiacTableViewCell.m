//
//  ZodiacTableViewCell.m
//  zodiac
//
//  Created by BabyKen on 25/3/14.
//  Copyright (c) 2014 huis. All rights reserved.
//

#import "ZodiacTableViewCell.h"

@implementation ZodiacTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor blackColor];
        
        self.zodiacLogoImgView = [[UIImageView alloc] initWithFrame:(CGRect){{0,0}, {56, 46}}];
        
        self.zodiacNameLabel = [[UILabel alloc] initWithFrame:(CGRect){{70, 0}, {80, 44}}];
        self.zodiacNameLabel.textColor = [UIColor whiteColor];
        
        [self addSubview:_zodiacLogoImgView];
        [self addSubview:_zodiacNameLabel];
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

@end
