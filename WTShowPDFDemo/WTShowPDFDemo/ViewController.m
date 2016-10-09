//
//  ViewController.m
//  WTShowPDFDemo
//
//  Created by ZhengleiGao on 16/8/26.
//  Copyright © 2016年 www.chinawutong.com. All rights reserved.
//

#import "ViewController.h"
#import "BookPDF.h"
#import "ViewerPDFViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"PDF加载";
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 0, self.view.frame.size.width - 20, 44)];
    [button setCenter:self.view.center];
    [button setTitle:@"查看PDF" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor cyanColor];
    [button addTarget:self action:@selector(viewPDF:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}


- (void)viewPDF:(UIButton *)button {

//    NSString *path = [[NSBundle mainBundle] pathForResource:@"demo1" ofType:@"pdf"];
//    NSURL *url = [NSURL fileURLWithPath:path];
//    BookPDF *page = [[BookPDF alloc] initWithPDFAtURL:url];
//
//    page.controlsHidden = YES;
    
    
    ViewerPDFViewController *viewer = [[ViewerPDFViewController alloc] init];
    
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:viewer];
    
    [self presentViewController:nav animated:YES completion:NULL];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
