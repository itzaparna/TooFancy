//
//  BRHttpClient.m
//  TooFancyTabs
//
//  Created by Aparna Deshpande on 4/8/14.
//  Copyright (c) 2014 Aparna Deshpande. All rights reserved.
//

#import "BRHttpClient.h"

#import "AFNetworking.h"

static NSString * const kAFTwitterAPIBaseURLString = @"http://strong-earth-32.heroku.com";

@implementation BRHttpClient

+ (BRHttpClient *)sharedClient {
    
    static BRHttpClient *__sharedDataManager;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        __sharedDataManager = [[self alloc] initWithBaseURL:[NSURL URLWithString:kAFTwitterAPIBaseURLString]];
    });
    
    return __sharedDataManager;
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (!self) {
        return nil;
    }
    
    [self registerHTTPOperationClass:[AFJSONRequestOperation class]];
    [self setDefaultHeader:@"Accept" value:@"application/json"];
    
    return self;
}

+ (void)getStoresWithBlock:(void (^)(NSArray *tweets, NSError *error))block {
    [[BRHttpClient sharedClient] getPath:@"/stores.aspx"
                              parameters:nil
                                 success:^(AFHTTPRequestOperation *operation, NSDictionary *JSON) {
                                     
                                     NSMutableArray *mutableTweets = [JSON valueForKey:@"stores"];
                                     
                                     NSLog(@"Downloaded %d stores", mutableTweets.count);
                                     
                                 } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                     if (block) {
                                         block([NSArray array], error);
                                     }
                                 }];
}

@end
