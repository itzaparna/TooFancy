//
//  BRHttpClient.h
//  TooFancyTabs
//
//  Created by Aparna Deshpande on 4/8/14.
//  Copyright (c) 2014 Aparna Deshpande. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "AFHTTPClient.h"

@interface BRHttpClient : AFHTTPClient

+ (BRHttpClient *)sharedClient;
+ (void)getStoresWithBlock:(void (^)(NSArray *tweets, NSError *error))block;

@end
