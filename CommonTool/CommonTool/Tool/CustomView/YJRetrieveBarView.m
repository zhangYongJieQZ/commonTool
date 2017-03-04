//
//  YJRetrieveBarView.m
//  CommonTool
//
//  Created by admin on 2017/3/4.
//  Copyright © 2017年 张永杰. All rights reserved.
//

#import "YJRetrieveBarView.h"
@interface YJRetrieveBarView ()
@property (nonatomic, copy)searchResult  myBlock;
@property (nonatomic, strong)NSArray  *leftterArray;

@end
@implementation YJRetrieveBarView

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        _leftterArray = @[@"A",@"B",@"C",@"D",@"E",@"F",@"G",@"H",@"I",@"J",@"K",@"L",@"M",@"N",@"O",@"P",@"Q",@"R",@"S",@"T",@"U",@"V",@"W",@"X",@"Y",@"Z",@"#"];
        [self createSubviews];
    }
    return self;
}

- (void)createSubviews{
    for (int i = 0; i < _leftterArray.count; i++) {
        UIButton *btn = [[UIButton alloc] init];
        btn.tag = i;
        [btn setTitle:_leftterArray[i] forState:UIControlStateNormal];
        btn.titleLabel.font = [UIFont systemFontOfSize:14];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self addSubview:btn];
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.right.equalTo(self);
            make.top.equalTo(self.mas_top).offset(i * (self.frame.size.height * 1.0 / self.leftterArray.count));
            make.height.mas_equalTo(self.frame.size.height * 1.0 / self.leftterArray.count);
        }];
        [btn addTarget:self action:@selector(btnAction:) forControlEvents:UIControlEventTouchUpInside];
    }
}


- (void)showInView:(UIView *)view searchResult:(searchResult)searchBlock{
    [view addSubview:self];
    _myBlock = searchBlock;
}

- (void)btnAction:(UIButton *)btn{
    NSString *letter = _leftterArray[btn.tag];
    if (_myBlock) {
        _myBlock(letter);
    }
}


@end
