//
//  WJImageViewMaker.m
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJImageViewMaker.h"



@implementation UIImageView (WJMaker)


+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJImageViewMaker *make))block {
    UIImageView *imageView = [[UIImageView alloc] init];
    [imageView wj_makeView:block];
    return imageView;
}

- (void)wj_makeView:(void(^)(WJImageViewMaker *make))block {
   WJImageViewMaker *maker = [[WJImageViewMaker alloc] initWithImageView:self];
    block ? block(maker) : nil;
}

@end

#pragma mark - ========================================================

@interface WJImageViewMaker ()

@property (nonatomic, strong, readwrite) UIImageView *imageView;

@end

@implementation WJImageViewMaker

- (instancetype)initWithImageView:(UIImageView *)imageView {
    if (self = [super initWithView:imageView]) {
        self.imageView = imageView;
    }
    return self;
}

- (WJImageViewMaker *(^)(UIImage *))image {
    return ^WJImageViewMaker *(UIImage *image) {
        self.imageView.image = image;
        return self;
    };
}

- (WJImageViewMaker *(^)(UIImage *))highlightedImage {
    return ^WJImageViewMaker *(UIImage *highlightedImage) {
        self.imageView.highlightedImage = highlightedImage;
        return self;
    };
}

- (WJImageViewMaker *(^)(NSArray<UIImage *> *))animationImages {
    return ^WJImageViewMaker *(NSArray<UIImage *> *animationImages) {
        self.imageView.animationImages = animationImages;
        return self;
    };
}

- (WJImageViewMaker *(^)(NSTimeInterval))animationDuration {
    return ^WJImageViewMaker *(NSTimeInterval animationDuration) {
        self.imageView.animationDuration = animationDuration;
        return self;
    };
}

- (WJImageViewMaker *(^)(NSInteger))animationRepeatCount {
    return ^WJImageViewMaker *(NSInteger animationRepeatCount) {
        self.imageView.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

@end
