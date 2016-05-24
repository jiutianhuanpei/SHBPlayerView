//
//  RootViewController.m
//  SHBPlayerView
//
//  Created by shenhongbang on 16/5/24.
//  Copyright © 2016年 shenhongbang. All rights reserved.
//

#import "RootViewController.h"
#import "SHBPlayerView.h"

@implementation RootViewController {
    SHBPlayerView           *_playerView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _playerView = [[SHBPlayerView alloc] initWithFrame:CGRectMake(50, 200, 200, 150) url:[NSURL URLWithString:@"http://main.gslb.ku6.com/s1/wPdFbrJ7V578E2bx/1228953319193/7d9963cd96e0fb1eda9623ec3a504c89/1459923636272/v517/30/27/GIZTEuhSQZOsfPJ1j2Lntg.mp4"]];
    
    [self.view addSubview:_playerView];
    
    [self creatBtn:@"Play" action:@selector(clickedBtn:) y:400];
}

- (void)clickedBtn:(UIButton *)btn {
    if (btn.selected) {
        [_playerView.player pause];
    } else {
        [_playerView.player play];
    }
    btn.selected = !btn.selected;
}


- (UIButton *)creatBtn:(NSString *)title action:(SEL)action y:(CGFloat)y {
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [btn sizeToFit];
    btn.center = CGPointMake(CGRectGetWidth(self.view.frame) / 2., y);
    return btn;
}

@end
