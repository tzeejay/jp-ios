//
//  ViewController.m
//  JP-Zeiten
//
//  Created by Constantin Jacob on 17.12.17.
//  Copyright © 2017 Constantin Jacob. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property NSArray *rows;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.rows = [[NSArray alloc] init];
    
    NetworkingHelper *helper = [[NetworkingHelper alloc] init];
    [helper queryAPIv1Zeiten_100_200WithCompletion:^(BOOL success, NSDictionary *json) {
        nil;
    }];
    
    /*[helper sendKFZHerstellerToAPIWithName:@"ttest1-2" andCompletion:^(BOOL success, NSError *error) {
        nil;
    }];*/
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.rows count];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    return nil;
}

@end
