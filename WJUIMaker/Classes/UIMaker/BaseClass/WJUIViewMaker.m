//
//  WJUIViewMaker.m
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJUIViewMaker.h"

@implementation UIView (WJMaker)

+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJUIViewMaker *make))block {
   UIView *view = [[UIView alloc] init];
    [view wj_makeView:block];
    return view;
}

- (void)wj_makeView:(void(^)(WJUIViewMaker *make))block {
    WJUIViewMaker *make = [[WJUIViewMaker alloc] initWithView:self];
    block ? block(make) : nil;
}

- (void)wj_addToSuperView:(UIView *)superView {
    [superView wj_addToSuperView:self];
}

@end


#pragma mark - ========================================================


@interface WJUIViewMaker ()

@property (nonatomic, strong, readwrite) UIView *view;

@end

@implementation WJUIViewMaker

- (instancetype)initWithView:(UIView *)view {
    if (self = [super init]) {
        self.view = view;
    }
    return self;
}


#pragma mark - Getter

- (WJUIViewMaker *(^)(NSInteger))tag {
    return ^WJUIViewMaker *(NSInteger tag) {
        self.view.tag = tag;
        return self;
    };
}

- (WJUIViewMaker *(^)(BOOL))userInteractionEnabled {
    return ^WJUIViewMaker *(BOOL userInteractionEnabled) {
        self.view.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (WJUIViewMaker *(^)(CGRect))frame {
    return ^WJUIViewMaker *(CGRect frame) {
        self.view.frame = frame;
        return self;
    };
}

- (WJUIViewMaker *(^)(BOOL))clipsToBounds {
    return ^WJUIViewMaker *(BOOL clipsToBounds) {
        self.view.clipsToBounds = clipsToBounds;
        return self;
    };
}

- (WJUIViewMaker *(^)(UIColor *))backgroundColor {
    return ^WJUIViewMaker *(UIColor *backgroundColor) {
        self.view.backgroundColor = backgroundColor;
        return self;
    };
}

- (WJUIViewMaker *(^)(CGFloat))alpha {
    return ^WJUIViewMaker *(CGFloat alpha) {
        self.view.alpha = alpha;
        return self;
    };
}

- (WJUIViewMaker *(^)(BOOL))hidden {
    return ^WJUIViewMaker *(BOOL hidden) {
        self.view.hidden = hidden;
        return self;
    };
}

- (WJUIViewMaker *(^)(CGFloat))cornerRadius {
    return ^WJUIViewMaker *(CGFloat cornerRadius) {
        self.view.layer.cornerRadius = cornerRadius;
        self.view.layer.masksToBounds = YES;
        return self;
    };
}

- (WJUIViewMaker *(^)(CGFloat, UIColor *))border {
    return ^WJUIViewMaker *(CGFloat width, UIColor *color) {
        self.view.layer.borderWidth = width;
        self.view.layer.borderColor = color.CGColor;
        return self;
    };
}

- (WJUIViewMaker *(^)(UIView *))addToSuperView {
    return ^WJUIViewMaker *(UIView *superView) {
        [superView addSubview:self.view];
        return self;
    };
}

- (WJUIViewMaker *(^)(UIView *))addSubview {
    return ^WJUIViewMaker *(UIView *subView) {
        [self.view addSubview:subView];
        return self;
    };
}

- (WJUIViewMaker *(^)(UIColor *))tintColor {
    return ^WJUIViewMaker *(UIColor *tintColor) {
        self.view.tintColor = tintColor;
        return self;
    };
}

- (WJUIViewMaker *(^)(UIViewContentMode))contentMode {
    return ^WJUIViewMaker *(UIViewContentMode mode) {
        self.view.contentMode = mode;
        return self;
    };
}

- (WJUIViewMaker *(^)(UIView *))maskView {
    return ^WJUIViewMaker *(UIView *maskView) {
        self.view.maskView = maskView;
        return self;
    };
}

- (WJUIViewMaker *(^)(CGAffineTransform))transform {
    return ^WJUIViewMaker *(CGAffineTransform form) {
        self.view.transform = form;
        return self;
    };
}

-(WJUIViewMaker *(^)(UIGestureRecognizer *))addGestureRecognizer {
    return ^WJUIViewMaker *(UIGestureRecognizer *gestureRecognizer) {
        [self.view addGestureRecognizer:gestureRecognizer];
        return self;
    };
}


- (WJUIViewMaker *(^)(CGColorRef))shadowColor {
    return ^WJUIViewMaker *(CGColorRef shadowColor) {
        self.view.layer.shadowColor = shadowColor;
        return self;
    };
}

- (WJUIViewMaker *(^)(float))shadowOpacity {
    return ^WJUIViewMaker *(float shadowOpacity) {
        self.view.layer.shadowOpacity = shadowOpacity;
        return self;
    };
}

- (WJUIViewMaker *(^)(CGSize))shadowOffset {
    return ^WJUIViewMaker *(CGSize shadowOffset) {
        self.view.layer.shadowOffset = shadowOffset;
        return self;
    };
}

- (WJUIViewMaker *(^)(CGFloat))shadowRadius {
    return ^WJUIViewMaker *(CGFloat shadowRadius) {
        self.view.layer.shadowRadius = shadowRadius;
        return self;
    };
}

@end
