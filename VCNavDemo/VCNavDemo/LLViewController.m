//
//  LLViewController.m
//  VCNavDemo
//
//  Created by OranWu on 13-1-6.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "LLViewController.h"

@interface LLViewController ()

@end

@implementation LLViewController

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
    UIButton *popBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 200, 100, 60)];
    [popBtn addTarget:self action:@selector(popVC:) forControlEvents:UIControlEventTouchUpInside];
    [popBtn setTitle:@"popVC" forState:UIControlStateNormal];
    popBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:popBtn];
}

- (void)popVC:(UIButton*)btn{
    //由于是push过来的，这里使用pop方式导航回去
    //*******************************************************************************
    [self.navigationController popViewControllerAnimated:YES];
    //*******************************************************************************
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
