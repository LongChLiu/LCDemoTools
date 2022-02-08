//
//  LCViewController.m
//  LCDemoTools
//
//  Created by LongChLiu on 02/07/2022.
//  Copyright (c) 2022 LongChLiu. All rights reserved.
//

#import "LCViewController.h"
#import "LCCircleButton.h"


@interface LCViewController ()

@end

@implementation LCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    LCCircleButton* btn = [LCCircleButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    [btn setTitle:@"测试按钮" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor brownColor];
    [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    btn.frame = CGRectMake(100, 200, 80, 80*0.618);
    
}

-(void)btnAction:(UIButton*)btn{
    
    NSLog(@"点击了组件中的自定义按钮");
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
