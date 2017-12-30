//
//  NetworkingHelper.h
//  JP-Zeiten
//
//  Created by Constantin Jacob on 17.12.17.
//  Copyright © 2017 Constantin Jacob. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkingHelper : NSObject

/* - - - -
 
 All the GET API queries
 
 - - - - */
- (void)queryAPIv1Zeiten_100_200WithCompletion:(void (^)(BOOL success, NSDictionary *json))completion;
- (void)queryAPIv1Zeiten_0_100WithCompletion:(void (^)(BOOL success, NSDictionary *json))completion;
- (void)queryAPIv1Zeiten_50_150WithCompletion:(void (^)(BOOL success, NSDictionary *json))completion;
- (void)queryAPIv1KFZHerstellerWithCompletion:(void (^)(BOOL success, NSDictionary *json))completion;
- (void)queryAPIv1BasisKFZWithCompletion:(void (^)(BOOL success, NSDictionary *json))completion;



/* - - - -
 
 All the POST API queries
 
 - - - - */
- (void)sendAPIv1KFZHerstellerToAPIWithName:(NSString*)herstellerName andCompletion:(void (^)(BOOL success, NSError *error))completion;

@end
