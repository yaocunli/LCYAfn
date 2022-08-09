//
//  LCYAfn.m
//  LCYAfnetworking
//
//  Created by lcy on 2022/8/5.
//

#import "LCYAfn.h"
#import "AFNetworking.h"
#import "JLRoutes.h"

@implementation LCYAfn
+(void)testWithString:(NSString*)url {
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.requestSerializer = [AFHTTPRequestSerializer serializer];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager GET:url parameters:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSString *dataString = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"%@",dataString);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
    }];
}

+(void)testRoute:(NSString*)url {
    NSLog(@"1111");
    [JLRoutes routeURL:[NSURL URLWithString:@"littleThingProject://routesTargetVC/passValues"]];
}



@end
