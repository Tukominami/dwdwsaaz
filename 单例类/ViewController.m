//
//  ViewController.m
//  单例类
//
//  Created by       苑 on 16/3/31.
//  Copyright © 2016年 kae. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"
#import "VedioView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MyClass *obj1 =[MyClass sharedProperty];
    NSLog(@"%p",obj1);
    MyClass *obj2 =[MyClass sharedProperty];
    NSLog(@"%p",obj2);
    for (int j =0; j <4; j++) {
        VedioView *vView=[[VedioView alloc]initWithFrame:CGRectMake(5+(150+10)*(j%2),40+(80+5)*(j/2), 150, 80)];
        vView.backgroundColor =[UIColor brownColor];
        [self.view addSubview:vView];
    }
    NSLog(@"同步");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
