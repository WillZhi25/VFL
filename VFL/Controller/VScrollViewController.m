//
//  VScrollViewController.m
//  VFL
//
//  Created by Will Zhi on 15/4/15.
//  Copyright (c) 2015年 机智的新手. All rights reserved.
//

#import "VScrollViewController.h"

@interface VScrollViewController ()

@end

@implementation VScrollViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIScrollView *scrollview=[[UIScrollView alloc]init];
    scrollview.translatesAutoresizingMaskIntoConstraints=NO;
    [self.view addSubview:scrollview];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[scrollview]|"
                                                                      options:0
                                                                      metrics:nil
                                                                      views:NSDictionaryOfVariableBindings(scrollview)]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[scrollview]|"
                                                                      options:0
                                                                      metrics:nil
                                                                      views:NSDictionaryOfVariableBindings(scrollview)]];
    
    
    UIView *view1=[[UIView alloc]init];
    view1.translatesAutoresizingMaskIntoConstraints=NO;
    [scrollview addSubview:view1];
    view1.backgroundColor=[UIColor redColor];
    [scrollview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view1(==width)]|"
                                                                       options:0
                                                                       metrics:@{@"width":@(self.view.frame.size.width)}
                                                                       views:NSDictionaryOfVariableBindings(view1)]];
    [scrollview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[view1(==300)]"
                                                                       options:0
                                                                       metrics:nil
                                                                         views:NSDictionaryOfVariableBindings(view1)]];
    
    UIView *view2=[[UIView alloc]init];
    view2.translatesAutoresizingMaskIntoConstraints=NO;
    [scrollview addSubview:view2];
    view2.backgroundColor=[UIColor grayColor];
    [scrollview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view2(==view1)]"
                                                                       options:0
                                                                       metrics:nil
                                                                         views:NSDictionaryOfVariableBindings(view2,view1)]];
    [scrollview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[view1][view2(==400)]"
                                                                       options:0
                                                                       metrics:nil
                                                                         views:NSDictionaryOfVariableBindings(view2,view1)]];
    
    UIView *view3=[[UIView alloc]init];
    view3.translatesAutoresizingMaskIntoConstraints=NO;
    [scrollview addSubview:view3];
    view3.backgroundColor=[UIColor purpleColor];
    [scrollview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[view3(==view2)]|"
                                                                       options:0
                                                                       metrics:nil
                                                                         views:NSDictionaryOfVariableBindings(view3,view2)]];
    [scrollview addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[view2][view3(==500)]|"
                                                                       options:0
                                                                       metrics:nil
                                                                         views:NSDictionaryOfVariableBindings(view3,view2)]];
    
    
}



@end
