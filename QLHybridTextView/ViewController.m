//
//  ViewController.m
//  QLHybridTextView
//
//  Created by alicejhchen on 2017/9/12.
//  Copyright © 2017年 tencentVideo. All rights reserved.
//

#import "ViewController.h"
#import "QLRichLabel.h"

@interface ViewController ()

@property (nonatomic, strong) QLRichLabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _label = [[QLRichLabel alloc] initWithFrame:CGRectZero];
    [self.view addSubview:_label];
    
    _label.text = @"ewfwefwe[微笑]fw";
    _label.textColor = [UIColor blackColor];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    
    CGSize size = [QLRichLabel textSizeWithText:_label.text constraintSize:CGSizeMake(300, 9999)];
    
    _label.frame = CGRectMake(30, 30, size.width, size.height);
}


@end
