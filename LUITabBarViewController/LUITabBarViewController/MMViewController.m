//
//  MMViewController.m
//  LUITabBarViewController
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
    //这里设置一些区别，方便切换时观察效果
    //*******************************************************************************
    self.title = @"书签";
    self.view.backgroundColor = [UIColor colorWithRed:0 green:0.5 blue:0.5 alpha:0.5];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
