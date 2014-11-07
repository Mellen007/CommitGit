//
//  ViewController.m
//  CommitGit
//
//  Created by wo on 14-11-7.
//  Copyright (c) 2014年 wo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self.view setBackgroundColor:[UIColor blueColor]];
    UIButton *myButtton = [UIButton buttonWithType:UIButtonTypeCustom];
    myButtton.frame = CGRectMake(100, 30, 100, 30);
    [myButtton setTitle:@"按我" forState:UIControlStateNormal];
    [myButtton addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
    UILabel *myLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 70, 100, 30)];
    myLabel.tag = 10001;
    myLabel.text = @"变色";
    
    //git tag标签的添加
    UILabel *tagLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 110, 100, 30)];
    tagLabel.text = @"Git tag标签";
    
    
    [self.view addSubview:myButtton];
    [self.view addSubview:myLabel];
    [self.view addSubview:tagLabel];
    
    
}
-(void)click:(UIButton *)btn
{
   UILabel *label = (UILabel *)[self.view viewWithTag:10001];
//    label.text = @"变色uuuu";
    label.text = @"我想跳楼";
    label.backgroundColor = [UIColor greenColor];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
