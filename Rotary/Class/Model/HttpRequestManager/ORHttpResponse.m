//
//  ORResponse.m
//  Rotary
//
//  Created by oscar on 15/12/16.
//  Copyright © 2015年 oscar. All rights reserved.
//

#import "ORHttpResponse.h"

@interface ORHttpResponse ()

@property (strong, nonatomic)NSDictionary *responseDic;

@property (assign, nonatomic)NSInteger statusCode;

@property (assign, nonatomic)BOOL requestSuccessed;

@property (strong, nonatomic)NSError *error;


@end

@implementation ORHttpResponse

- (instancetype)initWithResponse:(NSURLSessionDataTask *)dataTask
                  responseObject:(id)responseObject
                requestSuccessed:(BOOL)requestSuccessed
                           error:(NSError *)error
{
    self = [super init];
    
    if (self)
    {
        NSHTTPURLResponse *response = (NSHTTPURLResponse *)dataTask.response;
        
        if ([responseObject isKindOfClass:[NSDictionary class]])
        {
            self.responseDic = responseObject;
        }
        else if([responseObject isKindOfClass:[NSString class]])
        {
            NSData *responseData = [responseObject dataUsingEncoding:NSUTF8StringEncoding];
            self.responseDic = [NSJSONSerialization JSONObjectWithData:responseData
                                                               options:NSJSONReadingMutableContainers
                                                                 error:nil];
        }
        else if([responseObject isKindOfClass:[NSData class]])
        {
            self.responseDic = [NSJSONSerialization JSONObjectWithData:responseObject
                                                               options:NSJSONReadingMutableContainers
                                                                 error:nil];
        }
        
        self.statusCode = response.statusCode;
        
        self.requestSuccessed = requestSuccessed;
        
        self.error = error;
    }
    return self;
}


@end
