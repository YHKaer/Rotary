//
//  ORHttpSessionManager.h
//  Rotary
//
//  Created by oscar on 15/12/16.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ORHttpResponse.h"

@interface ORHttpSessionManager : NSObject

typedef void(^ORHttpCompletionHandler)(ORHttpResponse *response);

+ (ORHttpSessionManager *)manager;

/// get请求
- (void)GET:(NSString *)URLString
 parameters:(id)parameters
   complete:(ORHttpCompletionHandler)complete;

/// post请求
- (void)POST:(NSString *)URLString
  parameters:(id)parameters
    complete:(ORHttpCompletionHandler)complete;

/// put请求
- (void)PUT:(NSString *)URLString
 parameters:(id)parameters
   complete:(ORHttpCompletionHandler)complete;

/// delete请求
- (void)DELETE:(NSString *)URLString
    parameters:(id)parameters
      complete:(ORHttpCompletionHandler)complete;

@end
