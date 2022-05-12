//
//  ViewController.m
//  HTTPLoader
//
//  Created by jinglin sun on 2021/8/27.
//

#import "ViewController.h"
#import <AFNetworking.h>

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)onStartClicked:(id)sender {
    NSURLSessionConfiguration *config  = [NSURLSessionConfiguration defaultSessionConfiguration];
    AFHTTPSessionManager *sessionManager = [[AFHTTPSessionManager alloc] initWithSessionConfiguration:config];
    sessionManager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    
    NSDictionary *params = @{@"Accept": @"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8",
        @"cookie": @"Hm_lpvt_e5c8f30b30415b1fc94d820ba9d4d08c=1630640967; Hm_lvt_e5c8f30b30415b1fc94d820ba9d4d08c=1630300770,1630640967; express.sid=s%3A9f14eead-7c72-4385-9fb9-1f3969633ed9.fVLtJWZzdQC+9EQl15HUaA5Siq4U7MS3wD/5CDr6GHs; UUAP_P_TOKEN=PT-640517885567545344-Yn1Nk0q2jI-uuap; UUAP_TRACE_TOKEN=0a253a015aab528093cdbd88701d8dd2; BAIDUID=9A40F02400743584252EF3C2D0FBB2BB:FG=1; BIDUPSID=9A40F024007435841099EBD996BAD208; PSTM=1630041955",
                             @"message": @{@"body":@[@{@"type": @"TEXT",
                                                       @"content": @"nihao"}]},
    };
    
    NSString *url = @"http://apiin.im.baidu.com/api/msg/groupmsgsend?access_token=d50e5fb3025e3e87d31630afd38f35115";
    url = @"http://family.baidu.com/shenghuo/article/150869";
    [sessionManager GET:url parameters:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nonnull responseObject) {
        NSLog(@"responce=%@", responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"error=%@", error);
    }];
}

@end
