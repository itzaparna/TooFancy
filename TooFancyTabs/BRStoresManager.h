//
//  BRJSONDataManager.h
//  TooFancyTabs
//
//  Created by Aparna Deshpande on 4/7/14.
//  Copyright (c) 2014 Aparna Deshpande. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BRStoresManager : NSObject
+ (void)publicTimelineTweetsWithBlock:(void (^)(NSArray *tweets, NSError *error))block;

@end
