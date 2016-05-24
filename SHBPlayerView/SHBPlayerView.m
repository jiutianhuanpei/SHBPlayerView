//
//  SHBPlayerView.m
//  SHBPlayerView
//
//  Created by shenhongbang on 16/5/24.
//  Copyright © 2016年 shenhongbang. All rights reserved.
//

#import "SHBPlayerView.h"

@implementation SHBPlayerView

- (instancetype)initWithFrame:(CGRect)frame url:(NSURL *)url {
    self = [super initWithFrame:frame];
    if (self) {
        AVPlayerItem *item = [AVPlayerItem playerItemWithURL:url];
        _player = [AVPlayer playerWithPlayerItem:item];
        AVPlayerLayer *layer = (AVPlayerLayer *)self.layer;
        layer.player = _player;
    }
    return self;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

+ (Class)layerClass {
    return [AVPlayerLayer class];
}

@end
