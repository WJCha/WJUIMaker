//
//  WJImageViewMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJUIViewMaker.h"
@class WJImageViewMaker;

#pragma mark - === Category ===

@interface UIImageView (WJMaker)

+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJImageViewMaker *make))block;
- (void)wj_makeView:(void(^)(WJImageViewMaker *make))block;

@end


#pragma mark - === MainClass ===


@interface WJImageViewMaker : WJUIViewMaker

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;
- (instancetype)initWithImageView:(UIImageView *)imageView NS_DESIGNATED_INITIALIZER;

@property (nonatomic, strong, readonly) UIImageView *imageView;

@property (nonatomic, copy, readonly) WJImageViewMaker *(^image)(UIImage *image);
@property (nonatomic, copy, readonly) WJImageViewMaker *(^highlightedImage)(UIImage *highlightedImage);
@property (nonatomic, copy, readonly) WJImageViewMaker *(^animationImages)(NSArray<UIImage *> *animationImages);
// for one cycle of images. default is number of images * 1/30th of a second (i.e. 30 fps)
@property (nonatomic, copy, readonly) WJImageViewMaker *(^animationDuration)(NSTimeInterval animationDuration);
@property (nonatomic, copy, readonly) WJImageViewMaker *(^animationRepeatCount)(NSInteger animationRepeatCount);

@end

