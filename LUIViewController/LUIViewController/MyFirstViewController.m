//
//  MyFirstViewController.m
//  LUIViewController
//
//  Created by OranWu on 13-1-4.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "MyFirstViewController.h"

@interface MyFirstViewController ()

@end

@implementation MyFirstViewController

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
    
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
