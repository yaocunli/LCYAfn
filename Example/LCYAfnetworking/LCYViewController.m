//
//  LCYViewController.m
//  LCYAfnetworking
//
//  Created by 李存瑶 on 08/05/2022.
//  Copyright (c) 2022 李存瑶. All rights reserved.
//

#import "LCYViewController.h"
#import "LCYAfn.h"

@interface LCYViewController ()

@end

@implementation LCYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [LCYAfn testWithString:@"http://www.baidu.com"];
}

@end
