//
//  BRTableViewCell.h
//  TooFancyTabs
//
//  Created by Aparna Deshpande on 4/8/14.
//  Copyright (c) 2014 Aparna Deshpande. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BRTableViewCell : UITableViewCell
@property (nonatomic, assign) IBOutlet UILabel *storeName;
@property (nonatomic, assign) IBOutlet UILabel *storePhoneNumber;
@property (nonatomic, assign) IBOutlet UIImageView *storeImage;

@end
