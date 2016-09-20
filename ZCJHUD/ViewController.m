//
//  ViewController.m
//  ZCJHUD
//
//  Created by zhangchaojie on 16/9/19.
//  Copyright © 2016年 zhangchaojie. All rights reserved.
//

#import "ViewController.h"
#import "ZCJHUD.h"

@interface ViewController ()

@property (nonatomic, strong) ZCJHUD *hud;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showDefaultHudAction:(id)sender {
    self.hud = [[ZCJHUD alloc] initWithView:self.view];
    [self.view addSubview:self.hud];
    [self.hud show];
    [self performSelector:@selector(done) withObject:nil afterDelay:2];
}

- (IBAction)showWithLabelAction:(id)sender {
    self.hud = [[ZCJHUD alloc] initWithView:self.view];
    [self.view addSubview:self.hud];
    self.hud.labelText = @"Hellow world";
    [self.hud show];
    [self performSelector:@selector(done) withObject:nil afterDelay:2];
}

- (IBAction)showOnlyLabelAction:(id)sender {
    self.hud = [[ZCJHUD alloc] initWithView:self.view];
    [self.view addSubview:self.hud];
    self.hud.labelText = @"Hellow world";
    self.hud.mode = ZCJHUDModeText;
    [self.hud show];
    [self performSelector:@selector(done) withObject:nil afterDelay:2];
}

- (void)done {
    [self.hud hide];
}

@end
