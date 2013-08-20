//
//  ViewController.m
//  LUITableView
//
//  Created by OranWu on 13-1-5.
//  Copyright (c) 2013年 Oran Wu. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

//*******************************************************************************
//这里我们添加UITableView 的两个委托 
//*******************************************************************************
@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>{
    NSArray *dataArray;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    CGRect frame = [self.view bounds];
    
    //*******************************************************************************
    //这里我们添加UITableView
    //*******************************************************************************
    UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    tableView.dataSource = self;
    tableView.delegate = self;
    [self.view addSubview:tableView];
    
    //*******************************************************************************
    //这里生成 UITableView的 模拟数据
    //*******************************************************************************
    dataArray = [NSArray arrayWithObjects:
                 @"Google",
                 @"百　度",
                 @"网　易",
                 @"微 博",
                 @"优 酷 网",
                 @"淘 宝 网",
                 @"亚 马 逊",
                 @"艺龙酒店",
                 @"美 团 网",
                 @"上品折扣",
                 @"C N T V",
                 @"腾  讯",
                 @"新  浪",
                 @"当　当",
                 @"凤 凰 网",
                 @"MSN中文网",
                 @"猫　扑", @"",nil];
    
    //下面刷新tableView
    //*******************************************************************************
    [tableView reloadData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -------------------
#pragma mark UITableViewDataSource
//委托里 @required 的必须实现

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    //返回cell的数量
    return [dataArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    //定义用于重用Cell的CellIdentifier
    static NSString *CellIdentifier = @"UITableViewCell";
    //用CellIdentifier 取cell
    
    //这里我们使用我们自定义的Cell，具体内容到CustomCell.m实现文件中查看
    //*******************************************************************************
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //如果有可重用的cell，则跳过if 否则 实例化一个
    if (cell == nil) {
        cell = [[CustomCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    //config the cell
    //使用数据源 dataArray 给cell 赋值
    cell.model = [dataArray objectAtIndex:indexPath.row];
    
    return cell;
}


#pragma mark -------------------
#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    //返回在CustomCell中定义的cell的高度
    return [CustomCell cellHeight];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"您点击了Cell%d: %@", indexPath.row, [dataArray objectAtIndex:indexPath.row]);
}

@end
