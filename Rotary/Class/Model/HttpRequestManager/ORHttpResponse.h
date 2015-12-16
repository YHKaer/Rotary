//
//  ORResponse.h
//  Rotary
//
//  Created by oscar on 15/12/16.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ORHttpResponse : NSObject

- (instancetype)initWithResponse:(NSURLSessionDataTask *)dataTask
                  responseObject:(id)responseObject
                requestSuccessed:(BOOL)requestSuccessed
                           error:(NSError *)error;

@property (strong, nonatomic, readonly)NSDictionary *responseDic;

@property (assign, nonatomic, readonly)BOOL requestSuccessed;

@property (assign, nonatomic, readonly)NSInteger statusCode;

@property (strong, nonatomic, readonly)NSError *error;

@end
