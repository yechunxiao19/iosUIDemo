//
//  MMViewController.m
//  VCNavDemo
//
//  Created by OranWu on 13-1-6.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "MMViewController.h"

@interface MMViewController ()

@end

@implementation MMViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIButton *dismissVCBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 200, 100, 60)];
    [dismissVCBtn addTarget:self action:@selector(dismissVC:) forControlEvents:UIControlEventTouchUpInside];
    [dismissVCBtn setTitle:@"dismissVC" forState:UIControlStateNormal];
    dismissVCBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:dismissVCBtn];
}

- (void)dismissVC:(UIButton*)btn{
    
    //由于是present过来的，这里使用dismiss方式回去
    //*******************************************************************************
    [self dismissViewControllerAnimated:YES completion:^{
        
    }];
    //*******************************************************************************

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
