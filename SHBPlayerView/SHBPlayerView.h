//
//  SHBPlayerView.h
//  SHBPlayerView
//
//  Created by shenhongbang on 16/5/24.
//  Copyright © 2016年 shenhongbang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>



@interface SHBPlayerView : UIView

@property (nonatomic, strong, readonly) AVPlayer *player;

- (instancetype)initWithFrame:(CGRect)frame url:(NSURL *)url;

- (instancetype)initWithFrame:(CGRect)frame __attribute__((deprecated));
- (instancetype)init __attribute__((deprecated));



@end
