//
//  NHViewController.m
//  NewDemo
//
//  Created by only-einsteined on 12/28/2020.
//  Copyright (c) 2020 only-einsteined. All rights reserved.
//


#import "NHViewController.h"

@interface NHViewController ()

@end

@implementation NHViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(([UIScreen mainScreen].bounds.size.width - 70) / 2, 200, 70, 80);
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"点击" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(showAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)showAction {
    Class NHDemoViewController = NSClassFromString(@"NHDemoViewController");
    [self.navigationController pushViewController:[[NHDemoViewController alloc] init] animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
