
#import "YONetwork.h"
#import "AFNetworking.h"

@implementation YONetwork

- (void)getGithubReposForUser:(NSString*)user withSuccess:(void(^)(id responseObject))success failure:(void(^)(NSError*error))failure
{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    [manager GET:@"https://www.baidu.com" parameters:nil progress:^(NSProgress * _Nonnull downloadProgress) {
        
    }
         success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
             
             NSLog(@"这里打印请求成功要做的事");
             
         }
     
         failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull   error) {
             
             NSLog(@"%@",error);  //这里打印错误信息
             
         }];
}
- (void) test {
    [self getGithubReposForUser:@"yohunl"withSuccess:^(id responseObject) {
        
        NSLog(@"getGithubReposForUser response = %@",responseObject);
    } failure:^(NSError*error) {
        
        NSLog(@"getGithubReposForUser error = %@",error);
    }];
}

@end
