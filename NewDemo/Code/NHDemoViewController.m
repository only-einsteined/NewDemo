//
//  DemoViewController.m
//  NewDemo
//

//  Created by onhonehd on 2020/12/28.
//  Copyright (c) 2020 only-einsteined. All rights reserved.


#import "NHDemoViewController.h"
#import <OldDemoViewModel/NHOldDemoViewModel.h>
#import <OldedDemoViewModel/NHOldedDemoViewModel.h>
#import <NewDemoProtocolManager/NHNewDemoProtocolManager.h>
#import <NewDemoViewModelProtocol/NHNewDemoViewModelProtocol.h>


@interface NHDemoViewController ()

@property (strong, nonatomic) UILabel *demoLabel;
@property (strong, nonatomic) UILabel *oldLabel;

@end

@implementation NHDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view.
    _demoLabel = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width - 80) / 2.0, 200, 80, 80)];
    _demoLabel.text = @"demolabel";
    _demoLabel.backgroundColor = [UIColor blueColor];
    _demoLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_demoLabel];
    
    _oldLabel = [[UILabel alloc] initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width - 80) / 2.0, 480, 80, 80)];
    _oldLabel.text = @"oldLabel";
    _oldLabel.backgroundColor = [UIColor blueColor];
    _oldLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_oldLabel];
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self loadViewModel];
}

- (void)loadViewModel {
    id <NHNewDemoViewModelProtocol> viewModel = [NHNewDemoProtocolManager loadInstanceWithProtocol:@protocol(NHNewDemoViewModelProtocol)];
    _demoLabel.textColor = viewModel.nhdemoLabelTextColor;
    _demoLabel.backgroundColor = viewModel.nhdemoLabelColor;
    _oldLabel.textColor = viewModel.nholdLabelTextColor;
    _oldLabel.backgroundColor = viewModel.nholdLabelColor;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
