//
//  ViewController.m
//  LUIScrollView
//
//  Created by OranWu on 13-1-5.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UIScrollViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //*******************************************************************************
    //在上两个Demo中我们学习了 如何添加   UIView UIImageView UILabel UIButton UITextField UITextView
    //这里我们学习下 如何使用 UISCrollView
    //*******************************************************************************
    
    CGRect frame = [self.view bounds];//这里使用bounds是为了适配那些高帅富iphone5的屏幕高度，要不我就直接写460或480(隐藏状态栏时的屏幕高度)了，TT
    
    UIScrollView *background = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    [self.view addSubview:background];
    background.backgroundColor = [UIColor colorWithRed:0.5 green:0.5 blue:0 alpha:0.5];
    //到这里 我们已经往屏幕上成功的添加一个scrollView了
    //*******************************************************************************
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 200, 300, 40)];
    label.text = @"这是UISCrollView";
    [background addSubview:label];
    //这里我们添加一个label 到background 上，来帮助我们观察background 的移动
    
    //编译运行.
    //是不是什么效果也没有，也不滚动?
    //*******************************************************************************
    //现在，我们就再设置几个属性
    //contentSize;                    // default CGSizeZero
    background.contentSize = CGSizeMake(320, frame.size.height+100);//这里设置background 的contentSize（内容区）比它的frame高度高 100，
    //编译运行. 我们可以看到上下拖动屏幕可以滚动了。
    
    //再试一试改变宽度
    //background.contentSize = CGSizeMake(320+300, frame.size.height);//这里设置background 的contentSize（内容区）比它的frame宽度宽 100，
    //记住：只有当contentSize 的宽度或高度 大于 frame的宽度或者高度时，它才能横向或者纵向滚动。
    //*******************************************************************************
    
    //contentOffset;                  // default CGPointZero
    //background.contentOffset = CGPointMake(100, 200);//这里设置background 的偏移量 x=100相当于 从右向左 拖动100个像素距离， 同理y=200
    
    //contentInset;                   // default UIEdgeInsetsZero. add additional scroll area around content
    //background.contentInset = UIEdgeInsetsMake(40, 0, 0, 40);//这里依次为 top left bottom right，相当于在四个方向上额外加的 可滚动区域

    //delegate;                       // default nil. weak reference
    background.delegate = self;//这里设置委托对象为VC自己，同样需要在@interface ViewController处加上委托，然后在下面实现委托的方法
    
    //scrollEnabled;                  // default YES. turn off any dragging temporarily
    //background.contentInset = NO;//设置为禁止滚动，在某些时候需要用到
    //这里我们已经学会 如何使用 UISCrollView 的基本功能
    //*******************************************************************************
    //作为练习
    //我们可以根据需要把我们之前学过的 UIView UIImageView UILabel UITextField UITextView UIButton 添加到 UIScrollView（background）上来
    
    //*******************************************************************************
    //下一节我们学习 如何使用UITableView 和 UITableViewCell
    //*******************************************************************************


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -------------------
#pragma mark UITextFieldDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    // any offset changes
    NSLog(@"%f",scrollView.contentOffset.y);//这里我们输出 scrollView的纵向 偏移量
}
// called on start of dragging (may require some time and or distance to move)
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"scrollViewWillBeginDragging");
}
// called on finger up if the user dragged. decelerate is true if it will continue moving afterwards
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"scrollViewDidEndDragging willDecelerate");
}
// called on finger up as we are moving
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"scrollViewWillBeginDecelerating");
}
// called when scroll view grinds to a halt
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"scrollViewDidEndDecelerating");
}

@end
