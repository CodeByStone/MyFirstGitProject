//
//  ViewerPDFViewController.m
//  WTShowPDFDemo
//
//  Created by ZhengleiGao on 16/8/26.
//  Copyright © 2016年 www.chinawutong.com. All rights reserved.
//

#import "ViewerPDFViewController.h"

@interface ViewerPDFViewController ()

@end

@implementation ViewerPDFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"协议";
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:webView];

    NSString*path =[[NSBundle mainBundle] pathForResource:@"demo1" ofType:@"pdf"];
    NSURL *targetURL =[NSURL fileURLWithPath:path];
    NSURLRequest*request =[NSURLRequest requestWithURL:targetURL];
    [webView loadRequest:request];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
