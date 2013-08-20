//
//  CustomCell.m
//  LUITableView
//
//  Created by OranWu on 13-1-5.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

//*******************************************************************************
//这里CustomView类 也可以新建一个类 再引入头文件回来
//*******************************************************************************
@interface CustomView : UIView
@property (nonatomic, strong) NSString *model;

@end
@implementation CustomView
@synthesize model = _model;

- (id)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        //*******************************************************************************
        //设置 背景透明或其他颜色，不然多次重绘时之前绘制的内容都还在，会叠加到一块儿
        //*******************************************************************************
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    //*******************************************************************************
    //绘制Cell内容，NSString UIImage 等有drawInRect或者drawAtPoint 方法的都可以在这里绘制
    //*******************************************************************************
    [[UIColor redColor] set];

    //绘制一张图片
    UIImage *image = [UIImage imageNamed:@"headImage.jpg"];
    //[image drawAtPoint:CGPointMake(5, 5)];
    [image drawInRect:CGRectMake(5, 5, 50, 50)];
    
    //绘制一个字符串 drawInRect: 在某个区域内 withFont: 以什么字体
    [_model drawInRect:CGRectMake(60, 5, 200, 30) withFont:[UIFont systemFontOfSize:18]];
    
    [[UIColor greenColor] set];
    //绘制图形
    CGContextRef context = UIGraphicsGetCurrentContext();
	UIGraphicsPushContext(context);
	CGContextBeginPath(context);
    //*******************************************************************************
    //这之间的内容决定你画的是什么图形
	CGContextAddArc(context, 70, 40, 10, 0.0, 2*M_PI, NO);// (70, 40)为圆心 10 是半径
    //这之间的内容决定你画的是什么图形
    //*******************************************************************************
	CGContextFillPath(context);
	UIGraphicsPopContext();
    //*******************************************************************************
    //根据需要，你可以在这里绘制Cell内容来定制你的cell
    //那些不需要响应点击等事件的元素都可以绘制到CustomView上
    //需要响应点击事件等的UIView，如UIButton则需要addSubview到cell.contentView上
    //*******************************************************************************
}

- (void)setModel:(NSString *)model{
    _model = model;
    //这里setNeedsDisplay 重绘自己
    [self setNeedsDisplay];
}
@end




#import "CustomCell.h"
@interface CustomCell() {
    CustomView *cView;
}
@end
@implementation CustomCell
@synthesize model = _model;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [cView removeFromSuperview];
        //*******************************************************************************
        //实例化 cView 并添加到 cell的contentView 上
        //那些不需要响应点击等事件的元素都可以绘制到CustomView上
        //需要响应点击事件等的UIView，如UIButton则需要addSubview到self.contentView上
        //*******************************************************************************
        cView = [[CustomView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, [CustomCell cellHeight])];
        [self.contentView addSubview:cView];
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

- (void)setModel:(NSString *)model{
    _model = model;
    //*******************************************************************************
    //设置cView 的model属性， 由于CustomView 实现了- (void)setModel:(NSString *)model; 同时也会调用这个方法
    //*******************************************************************************
    cView.model = _model;
}

+ (float)cellHeight{
    return 60;//如果你需要高度随内容变化的cell，在这里返回高度计算结果
}


@end
