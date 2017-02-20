//
//  ViewController.m
//  CommonTool
//
//  Created by 张永杰 on 16/8/30.
//  Copyright © 2016年 张永杰. All rights reserved.
//

#import "ViewController.h"
#import "LocalLog.h"
#import "UIImage+CommonTool.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *codeImageV;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZYJDlog(@"%@",self);
//    _codeImageV.image = [UIImage QRCodeWithString:@"张永杰"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
