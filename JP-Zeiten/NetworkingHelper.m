//
//  NetworkingHelper.m
//  JP-Zeiten
//
//  Created by Constantin Jacob on 17.12.17.
//  Copyright © 2017 Constantin Jacob. All rights reserved.
//

#import "NetworkingHelper.h"

@implementation NetworkingHelper


- (void)queryAPIv1Zeiten_100_200WithCompletion:(void (^)(BOOL, NSDictionary *))completion {
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/api/v1/zeiten-100-200"]]];
        
        NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
            if (error == nil) {
            
                NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                NSLog(@"%@", json);
            
                dispatch_async(dispatch_get_main_queue(), ^{
                    completion(YES, json);
                });
            }
        }];
        
        [task resume];
    });
    
}


- (void)queryAPIv1Zeiten_0_100WithCompletion:(void (^)(BOOL, NSDictionary *))completion {
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/api/v1/zeiten-0-100"]]];
        
        NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
            if (error == nil) {
                
                NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                NSLog(@"%@", json);
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    completion(YES, json);
                });
            }
        }];
        
        [task resume];
    });
    
}

- (void)queryAPIv1Zeiten_50_150WithCompletion:(void (^)(BOOL, NSDictionary *))completion {
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/api/v1/zeiten-50-150"]]];
        
        NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
            if (error == nil) {
                
                NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                NSLog(@"%@", json);
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    completion(YES, json);
                });
            }
        }];
        
        [task resume];
    });
    
}

- (void)queryAPIv1KFZHerstellerWithCompletion:(void (^)(BOOL, NSDictionary *))completion {
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/api/v1/kfz-hersteller"]]];
        
        NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
            if (error == nil) {
                
                NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                NSLog(@"%@", json);
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    completion(YES, json);
                });
            }
        }];
        
        [task resume];
    });
    
}

- (void)queryAPIv1BasisKFZWithCompletion:(void (^)(BOOL, NSDictionary *))completion {
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/api/v1/basis-kfz"]]];
        
        NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
            
            if (error == nil) {
                
                NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
                NSLog(@"%@", json);
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    completion(YES, json);
                });
            }
        }];
        
        [task resume];
    });
    
}




- (void)sendKFZHerstellerToAPIWithName:(NSString *)herstellerName andCompletion:(void (^)(BOOL, NSError *))completion {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSMutableURLRequest *mutableRequest = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"http://localhost:8080/api/v1/kfz-hersteller"]]];
        
        NSDictionary *jsonDict = [[NSDictionary alloc] initWithObjects:@[herstellerName] forKeys:@[@"kfz_hersteller"]];
        NSLog(@"%@", jsonDict);
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:jsonDict options:0 error:nil];
        [mutableRequest setHTTPBody:jsonData];
        [mutableRequest setHTTPMethod:@"POST"];
        
        NSURLSessionDataTask *task = [[NSURLSession sharedSession] dataTaskWithRequest:mutableRequest completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                
            dispatch_async(dispatch_get_main_queue(), ^{
                completion(YES, nil);
            });
            
        }];
        
        [task resume];
    });
}

@end
