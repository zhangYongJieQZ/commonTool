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
#import "ZYJAFNetWorking.h"
#import "VideoListModel.h"
#import "VideoModel.h"
#import "VideoTopicModel.h"
#import "VideoSidModel.h"
#import "VideoRequestObject.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *codeImageV;
@property (nonatomic, strong)VideoRequestObject  *videoRequst;
@property (nonatomic, strong)VideoListModel  *listModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZYJDlog(@"%@",self);
    self.videoRequst = [[VideoRequestObject alloc] init];

    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)requestAction:(id)sender {
    WS(weSelf)
    [self.videoRequst videoRequestWithParams:nil inViewController:self requestReturn:^(id model) {
        weSelf.listModel = model;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
