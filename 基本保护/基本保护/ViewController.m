//
//  ViewController.m
//  基本保护
//
//  Created by 戈强宝 on 2018/5/17.
//  Copyright © 2018年 戈强宝. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    NSLog(@"%s",__func__);
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)clickOne:(UIButton *)sender {
    NSLog(@"调用了clickOne");
}

- (IBAction)clickTwo:(UIButton *)sender {
    NSLog(@"调用了clickTwo");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
