//
//  ViewController.m
//  LUIViewUIImageViewUILabel
//
//  Created by OranWu on 13-1-4.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    //*******************************************************************************
    //在上一个Demo中我们学习了 如何创建ViewController
    //这里我们学习下如何添加
    // UIView UIImageView UILabel
    //*******************************************************************************
    
    //首先我们先分别添加 UIView   UIImageView   UILabel 3个控件到self.view 上
    //*******************************************************************************
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 200, 100)];
    view.backgroundColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:0.6];
    [self.view addSubview:view];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 120, 200, 100)];
    imageView.backgroundColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:0.6];
    [self.view addSubview:imageView];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 230, 200, 100)];
    label.backgroundColor = [UIColor colorWithRed:0 green:0 blue:1 alpha:0.6];
    [self.view addSubview:label];
    //编译运行。我们会看到3个控件除了我们分别设置的背景色 r g b 不同其余都一样，
    //查看他们的头文件可见，他们都是UIView的子类,本质上就是UIView，不过是根据自己的需求定制化了不同的功能而已
    //*******************************************************************************
    
    //下面我们分别设置 imageView、 label 的各自属性 来看看他们的不同, 48 49行去掉注释
    //*******************************************************************************
    imageView.image = [UIImage imageNamed:@"mao.jpg"];
    label.text = @"这是一只猫。";
    //编译运行。 到这里我们可以看到他们各自独特的属性，一个可以设置图片属性，一个可以设置文字属性。
    
    //以下是UILabel的一些其他属性，你可以试着修改，并观察效果。
        label.font = [UIFont systemFontOfSize:60];
        label.textColor = [UIColor whiteColor];
        label.shadowColor = [UIColor yellowColor];
    //    label.shadowOffset = CGSizeMake(1, 1);
    //    label.textAlignment = NSTextAlignmentCenter;
    //    label.lineBreakMode = NSLineBreakByCharWrapping;
    //    label.numberOfLines = 2;
    //*******************************************************************************
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
