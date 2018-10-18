//
//  ViewController.m
//  EffectiveOC
//
//  Created by 韩志峰 on 2018/10/10.
//  Copyright © 2018 韩志峰. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableDictionary *aDictionary = [[NSMutableDictionary alloc] initWithCapacity:0];
    {
        NSString *aKey = @"akey";
        NSObject *aObject = [[NSObject alloc] init];
        [aDictionary setObject:aObject forKey:aKey];
    }
    NSLog(@"dictionary: %@", aDictionary);
    
   
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
