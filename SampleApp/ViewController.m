//
//  ViewController.m
//  SampleApp
//
//  Created by mac on 2020/4/27.
//  Copyright © 2020 siberiawolf. All rights reserved.
//

#import "ViewController.h"

@interface TestView : UIView

@end

@implementation TestView

// 重载UIView初始化函数
- (instancetype)init{
    self = [super init];
    if(self){
        
    }
    return self;
}

// 四个主要的声明周期，这里直接调用内部的生命周期函数
// 重载UIView的生命周期
- (void)willMoveToSuperview:(nullable UIView *)newSuperview{
    [super willMoveToSuperview: newSuperview];
}
- (void)didMoveToSuperview{
    [super didMoveToSuperview];
}
- (void)willMoveToWindow:(nullable UIWindow *)newWindow{
    [super willMoveToWindow:newWindow];
}
- (void)didMoveToWindow{
    [super didMoveToWindow];
}

@end

@interface ViewController ()<UITableViewDataSource>

@end

@implementation ViewController

// 重载UIViewController初始化函数
- (instancetype)init{
  self = [super init];
  if(self){
      
  }
  return self;
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear: animated];
}
- (void)viewDidAppear:(BOOL)animated{
    [super viewWillAppear: animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillAppear: animated];
}

- (void)viewDidDisappear:(BOOL)animated{
    [super viewWillAppear: animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds]; // 创建一个UITablecView，大小与整个ViewController大小一致
    
    tableView.dataSource = self;
    
    [self.view addSubview:tableView];
    
//    UIView *view = [[UIView alloc] init]; // 向内存申请分配地址，然后创建一个UIView
//    view.backgroundColor = [UIColor redColor];  // 背景色是红色
//    view.frame = CGRectMake(100, 100, 100, 100);    // 宽高是100，距离屏幕也分别是100
//
//    [self.view addSubview:view];    // 添加视图到根视图
    
    /*  注释掉UINavigatorController
    // view2 这个视图是后入栈的，所以这个视图会在前面的视图上面展示
    TestView *view2 = [[TestView alloc] init]; // 向内存申请分配地址，然后创建一个UIView
    view2.backgroundColor = [UIColor greenColor];  // 背景色是红色
    view2.frame = CGRectMake(150, 150, 100, 100);    // 宽高是100，距离屏幕也分别是100

    [self.view addSubview:view2];    // 添加视图到根视图
    
    // 建立一个手势
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(pushController)];
    // 给视图view2添加建立的手势
    [view2 addGestureRecognizer:tapGesture];*/
        
}

// 返回整个UITableView的行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

// 设置UITableViewCell 单元格
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    // 系统默认提供了四种内置的TableViewCell样式
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"id"];
    
    cell.textLabel.text = @"主标题";
    cell.detailTextLabel.text = @"副标题";
    cell.imageView.image = [UIImage imageNamed:@"icon.bundle/video@2x.png"];
    return cell;
}

/*
// push一个NavigationController
- (void)pushController{
    
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor whiteColor];
    viewController.navigationItem.title = @"内容";
    viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"右侧标题" style:UIBarButtonItemStylePlain target:self action:nil];
    
    
    [self.navigationController pushViewController:viewController animated:YES];
}*/

@end
