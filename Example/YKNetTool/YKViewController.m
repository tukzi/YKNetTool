//
//  YKViewController.m
//  YKNetTool
//
//  Created by hesong_ios@163.com on 08/23/2018.
//  Copyright (c) 2018 hesong_ios@163.com. All rights reserved.
//

#import "YKViewController.h"
#import "YKNetWorking.h"

@interface YKViewController ()

@end

@implementation YKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [YKNetWorking postWithUrl:@"https://pos.yeahka.com/fastpay/mgmt/check_status/query.do?app_version=215001" refreshCache:YES params:nil success:^(id response) {
        
        NSLog(@"%@",response);
//        self.showLa.text = [NSString stringWithFormat:@"%@",response];
        
    } fail:^(NSError *error) {
        
    }];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
