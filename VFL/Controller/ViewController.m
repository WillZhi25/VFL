//
//  ViewController.m
//  VFL
//
//  Created by Will Zhi on 15/4/15.
//  Copyright (c) 2015年 机智的新手. All rights reserved.
//

#import "ViewController.h"
#import "HScrollViewController.h"
#import "HVScrollViewController.h"
#import "VScrollViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)NSArray *titles;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _titles=@[@"水平滚动",@"垂直滚动",@"水平及垂直方向的滚动"];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _titles.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    cell.textLabel.text=_titles[indexPath.row];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    UIViewController *toController=nil;
    if (indexPath.row==0) {
        toController=[[HScrollViewController alloc]init];
    }else if(indexPath.row==1){
        toController=[[VScrollViewController alloc]init];
    }else{
        toController=[[HVScrollViewController alloc]init];
    }
    toController.title=_titles[indexPath.row];
    [self.navigationController pushViewController:toController animated:YES];
}
@end
