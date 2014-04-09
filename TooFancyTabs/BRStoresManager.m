//
//  BRJSONDataManager.m
//  TooFancyTabs
//
//  Created by Aparna Deshpande on 4/7/14.
//  Copyright (c) 2014 Aparna Deshpande. All rights reserved.
//

#import "BRStoresManager.h"

#import "BRHttpClient.h"

@implementation BRStoresManager

+ (BRStoresManager *)sharedManager {
    static BRStoresManager *__sharedDataManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __sharedDataManager = [[self alloc] init];
    });
    
    return __sharedDataManager;
    
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super init];
    if (!self) {
        return nil;
    }
    return self;
}

+ (void)publicTimelineTweetsWithBlock:(void (^)(NSArray *tweets, NSError *error))block {
    [[BRHttpClient sharedClient] getPath:@"/stores.aspx"
                              parameters:nil
                                 success:^(AFHTTPRequestOperation *operation, id JSON) {
                                     
        NSMutableArray *mutableTweets = [NSMutableArray arrayWithCapacity:[JSON count]];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (block) {
            block([NSArray array], error);
        }
    }];
}


@end