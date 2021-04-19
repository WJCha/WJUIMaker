//
//  WJScrollViewMaker.m
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJScrollViewMaker.h"

@implementation UIScrollView (WJMaker)


+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJScrollViewMaker *make))block {
    UIScrollView *scrollView = [[UIScrollView alloc] init];
    [scrollView wj_makeView:block];
    return scrollView;
}

- (void)wj_makeView:(void(^)(WJScrollViewMaker *make))block {
    WJScrollViewMaker *maker = [[WJScrollViewMaker alloc] initWithScrollView:self];
    block ? block(maker) : nil;
}


@end

#pragma mark - ========================================================

@interface WJScrollViewMaker ()

@property (nonatomic, strong, readwrite) UIScrollView *scrollView;

@end

@implementation WJScrollViewMaker

- (instancetype)initWithScrollView:(UIScrollView *)scrollView {
    if (self = [super initWithView:scrollView]) {
        self.scrollView = scrollView;
    }
    return self;
}


- (WJScrollViewMaker *(^)(CGPoint))contentOffset {
    return ^WJScrollViewMaker *(CGPoint contentOffset) {
        [self.scrollView setContentOffset:contentOffset];
        return self;
    };
}
- (WJScrollViewMaker *(^)(CGSize))contentSize {
    return ^WJScrollViewMaker *(CGSize contentSize) {
        [self.scrollView setContentSize:contentSize];
        return self;
    };
}
- (WJScrollViewMaker *(^)(UIEdgeInsets))contentInset {
    return ^WJScrollViewMaker *(UIEdgeInsets contentInset) {
        [self.scrollView setContentInset:contentInset];
        return self;
    };
}
- (WJScrollViewMaker *(^)(id<UIScrollViewDelegate>))delegate {
    return ^WJScrollViewMaker *(id<UIScrollViewDelegate> delegate) {
        [self.scrollView setDelegate:delegate];
        return self;
    };
}
- (WJScrollViewMaker *(^)(BOOL))directionalLockEnabled {
    return ^WJScrollViewMaker *(BOOL directionalLockEnabled) {
        [self.scrollView setDirectionalLockEnabled:directionalLockEnabled];
        return self;
    };
}
- (WJScrollViewMaker *(^)(BOOL))bounces {
    return ^WJScrollViewMaker *(BOOL bounces) {
        [self.scrollView setBounces:bounces];
        return self;
    };
}
- (WJScrollViewMaker *(^)(BOOL))alwaysBounceVertical {
    return ^WJScrollViewMaker *(BOOL alwaysBounceVertical) {
        [self.scrollView setAlwaysBounceVertical:alwaysBounceVertical];
        return self;
    };
}
- (WJScrollViewMaker *(^)(BOOL))alwaysBounceHorizontal {
    return ^WJScrollViewMaker *(BOOL alwaysBounceHorizontal) {
        [self.scrollView setAlwaysBounceHorizontal:alwaysBounceHorizontal];
        return self;
    };
}
- (WJScrollViewMaker *(^)(BOOL))pagingEnabled {
    return ^WJScrollViewMaker *(BOOL pagingEnabled) {
        [self.scrollView setPagingEnabled:pagingEnabled];
        return self;
    };
}
- (WJScrollViewMaker *(^)(BOOL))scrollEnabled {
    return ^WJScrollViewMaker *(BOOL scrollEnabled) {
        [self.scrollView setScrollEnabled:scrollEnabled];
        return self;
    };
}
- (WJScrollViewMaker *(^)(BOOL))showsHorizontalScrollIndicator {
    return ^WJScrollViewMaker *(BOOL showsHorizontalScrollIndicator) {
        [self.scrollView setShowsHorizontalScrollIndicator:showsHorizontalScrollIndicator];
        return self;
    };
}
- (WJScrollViewMaker *(^)(BOOL))showsVerticalScrollIndicator {
    return ^WJScrollViewMaker *(BOOL showsVerticalScrollIndicator) {
        [self.scrollView setShowsVerticalScrollIndicator:showsVerticalScrollIndicator];
        return self;
    };
}
- (WJScrollViewMaker *(^)(UIEdgeInsets))scrollIndicatorInsets {
    return ^WJScrollViewMaker *(UIEdgeInsets scrollIndicatorInsets) {
        [self.scrollView setScrollIndicatorInsets:scrollIndicatorInsets];
        return self;
    };
}
- (WJScrollViewMaker *(^)(UIScrollViewIndicatorStyle))indicatorStyle {
    return ^WJScrollViewMaker *(UIScrollViewIndicatorStyle indicatorStyle) {
        [self.scrollView setIndicatorStyle:indicatorStyle];
        return self;
    };
}
- (WJScrollViewMaker *(^)(CGFloat))decelerationRate {
    return ^WJScrollViewMaker *(CGFloat decelerationRate) {
        [self.scrollView setDecelerationRate:decelerationRate];
        return self;
    };
}

- (WJScrollViewMaker *(^)(CGFloat))minimumZoomScale {
    return ^WJScrollViewMaker *(CGFloat minimumZoomScale) {
        [self.scrollView setMinimumZoomScale:minimumZoomScale];
        return self;
    };
}
- (WJScrollViewMaker *(^)(CGFloat))maximumZoomScale {
    return ^WJScrollViewMaker *(CGFloat maximumZoomScale) {
        [self.scrollView setMaximumZoomScale:maximumZoomScale];
        return self;
    };
}

- (WJScrollViewMaker *(^)(UIScrollViewKeyboardDismissMode))keyboardDismissMode {
    return ^WJScrollViewMaker *(UIScrollViewKeyboardDismissMode keyboardDismissMode) {
        self.scrollView.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}

@end
