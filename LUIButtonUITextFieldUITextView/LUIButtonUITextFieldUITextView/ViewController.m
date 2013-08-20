//
//  ViewController.m
//  LUIButtonUITextFieldUITextView
//
//  Created by OranWu on 13-1-5.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "ViewController.h"


//这一节中我们会用到委托，下面介绍引入委托的3个步骤
//1、@interface 的声明中引入委托名 如17行，注意 委托名需要使用尖括号包起来
//2、设置委托对象 如 45行 71行
//3、实现委托方法 见 96行 131行

@interface ViewController ()<UITextFieldDelegate/*这里引入UITextField 需要的委托*/,UITextViewDelegate/*这里引入UITextView 需要的委托*/>{
    //在这里声明全局 私有变量
    UITextField *textField;
    UITextView  *textView;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    //*******************************************************************************
    //在上一个Demo中我们学习了 如何添加   UIView UIImageView UILabel
    //这里我们学习下 如何添加   UIButton UITextField UITextView
    //*******************************************************************************
    
    //添加 UITextField UIButton 2个控件到self.view 上
    //*******************************************************************************
    //UITextField 是继承自 UIControl，UIControl又是继承自UIView，所以UITextField 具有UIControl和UIView的所有属性。
    textField = [[UITextField alloc] initWithFrame:CGRectMake(10, 10, 200, 40)];
    textField.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0 alpha:0.5];
    textField.borderStyle = UITextBorderStyleRoundedRect;                        //设置边框类型
    //inputText.background = [UIImage imageNamed:@""];                           //设置背景图片
    textField.delegate = self;                                                   //设置委托对象
    textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;//文字内容 垂直居中，此为UIControl的属性
    [self.view addSubview:textField];
    textField.placeholder = @"请输入文字";                                         //设置默认提示文字
    //[inputText becomeFirstResponder];                                          //这句可以在初始化的时候，就使inputText变成第一响应者 弹出键盘
    
    //UIButton 是继承自 UIControl，具有UIControl和UIView的所有属性。
    UIButton *textFieldButton = [[UIButton alloc] initWithFrame:CGRectMake(220, 10, 90, 40)];
    textFieldButton.backgroundColor = [UIColor redColor];
    [textFieldButton setTitle:@"清除文字" forState:UIControlStateNormal];                //设置正常状态下 Button标题
    [textFieldButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal]; //设置正常状态下 Button标题颜色
    [textFieldButton addTarget:self action:@selector(onTextFieldButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    //addTarget:self 设置响应点击事件的对象
    //action:@selector(onTextFieldButtonClicked:) 设置响应点击事件的对象的方法函数，我们在下面会声明这个函数
    [self.view addSubview:textFieldButton];
    //*******************************************************************************
    
    //添加 UITextView UIButton 2个控件到self.view 上
    //*******************************************************************************
    //UITextField 是继承自 UIControl，UIControl又是继承自UIView，所以UITextField 具有UIControl和UIView的所有属性。
    textView = [[UITextView alloc] initWithFrame:CGRectMake(10, 60, 200, 200)];
    textView.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0 alpha:0.5];
    textView.font = [UIFont systemFontOfSize:18];
    textView.textColor = [UIColor redColor];
    textView.textAlignment = NSTextAlignmentLeft;                                 //设置左对齐，默认也是
    textView.editable = YES;                                                      //设置为可编辑，默认也是
    textView.delegate = self;
    [self.view addSubview:textView];
    
    //UIButton 是继承自 UIControl，具有UIControl和UIView的所有属性。
    UIButton *textViewButton = [[UIButton alloc] initWithFrame:CGRectMake(220, 140, 90, 40)];
    textViewButton.backgroundColor = [UIColor redColor];
    [textViewButton setTitle:@"清除文字" forState:UIControlStateNormal];
    [textViewButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [textViewButton addTarget:self action:@selector(onTextViewButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    //addTarget:self 设置响应点击事件的对象
    //action:@selector(onTextFieldButtonClicked:) 设置响应点击事件的对象的方法函数，我们在下面会声明这个函数
    [self.view addSubview:textViewButton];
    //*******************************************************************************
    
    //*******************************************************************************
    //这里我们学习下 如何添加   UIButton UITextField UITextView
    //下一个Demo中我们学习 如何添加 UIScrollView
    //*******************************************************************************
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//以下是UITextFieldDelegate 的部分委托实现
//*******************************************************************************
#pragma mark -------------------
#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    // return NO to disallow editing.
    return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField{
    // became first responder
    // 在这里监听UITextField becomeFirstResponder事件
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField{
    // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField{
    // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
    // 在这里监听UITextField resignFirstResponder事件
}
- (BOOL)textField:(UITextField *)_textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    // return NO to not change text
    NSLog(@"inputText: %@", textField.text);
    return YES;
}
//*******************************************************************************
#pragma mark -------------------
#pragma mark textFieldButton 的响应函数
- (void)onTextFieldButtonClicked:(UIButton*)button{
    [textView resignFirstResponder];
    [textField resignFirstResponder];
    textField.text = @"";
}

//以下是UITextViewDelegate 的部分委托实现
//*******************************************************************************
#pragma mark -------------------
#pragma mark UITextViewDelegate

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView{
    // return NO to disallow editing.
    return YES;
}
- (void)textViewDidBeginEditing:(UITextView *)textView{
    // became first responder
    // 在这里监听UITextView becomeFirstResponder事件
}
- (BOOL)textViewShouldEndEditing:(UITextView *)textView{
    // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end
    return YES;
}
- (void)textViewDidEndEditing:(UITextView *)textView{
    // may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
    // 在这里监听UITextView resignFirstResponder事件
}
- (void)textViewDidChangeSelection:(UITextView *)_textView{
    NSLog(@"textView: %@", textView.text);
}

//*******************************************************************************
#pragma mark -------------------
#pragma mark textViewButton 的响应函数
- (void)onTextViewButtonClicked:(UIButton*)button{
    [textView resignFirstResponder];
    [textField resignFirstResponder];
    textView.text = @"";
}


@end
