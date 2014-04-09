//
//  BRTableViewCell.m
//  TooFancyTabs
//
//  Created by Aparna Deshpande on 4/8/14.
//  Copyright (c) 2014 Aparna Deshpande. All rights reserved.
//

#import "BRTableViewCell.h"


@implementation BRTableViewCell

@synthesize storeImage;
@synthesize storeName;
@synthesize storePhoneNumber;


- (void)awakeFromNib {
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
