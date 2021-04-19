//
//  WJButtonMaker.m
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJButtonMaker.h"

@implementation UIButton (WJMaker)

+ (instancetype)wj_makeView:(UIButtonType)buttonType block:(NS_NOESCAPE void (^)(WJButtonMaker *))block {
    UIButton *button = [UIButton buttonWithType:buttonType];
    [button wj_makeView:block];
    return button;
}

+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJButtonMaker *make))block {
    return [UIButton wj_makeView:UIButtonTypeCustom block:block];
}

- (void)wj_makeView:(void(^)(WJButtonMaker *make))block {
    WJButtonMaker *maker = [[WJButtonMaker alloc] initWithButton:self];
    block ? block(maker) : nil;
    
}

@end



#pragma mark - ========================================================

@interface WJButtonMaker ()

@property (nonatomic, strong, readwrite) UIButton *button;

@end

@implementation WJButtonMaker

- (instancetype)initWithButton:(UIButton *)button {
    if (self = [super initWithControl:button]) {
        self.button = button;
    }
    return self;
}

- (WJButtonMaker *(^)(UIEdgeInsets))contentEdgeInsets {
    return ^WJButtonMaker *(UIEdgeInsets contentEdgeInsets) {
        [self.button setContentEdgeInsets:contentEdgeInsets];
        return self;
    };
}

- (WJButtonMaker *(^)(UIEdgeInsets))titleEdgeInsets {
    return ^WJButtonMaker *(UIEdgeInsets titleEdgeInsets) {
        [self.button setTitleEdgeInsets:titleEdgeInsets];
        return self;
    };
}

- (WJButtonMaker *(^)(UIEdgeInsets))imageEdgeInsets {
    return ^WJButtonMaker *(UIEdgeInsets imageEdgeInsets) {
        [self.button setImageEdgeInsets:imageEdgeInsets];
        return self;
    };
}

- (WJButtonMaker *(^)(UIColor *))tintColor {
    return ^WJButtonMaker *(UIColor *tintColor) {
        self.button.tintColor = tintColor;
        return self;
    };
}

- (WJButtonMaker *(^)(NSString *, UIControlState))titleForState {
    return ^WJButtonMaker *(NSString *title, UIControlState state) {
        [self.button setTitle:title forState:state];
        return self;
    };
}

- (WJButtonMaker *(^)(UIColor *, UIControlState))titleColorForState {
    return ^WJButtonMaker *(UIColor *color, UIControlState state) {
        [self.button setTitleColor:color forState:state];
        return self;
    };
}

- (WJButtonMaker *(^)(UIFont *))titleFont {
    return ^WJButtonMaker *(UIFont *titleFont) {
        self.button.titleLabel.font = titleFont;
        return self;
    };
}

- (WJButtonMaker *(^)(NSAttributedString *, UIControlState))attributedTitleForState {
    return ^WJButtonMaker *(NSAttributedString *str, UIControlState state) {
        [self.button setAttributedTitle:str forState:state];
        return self;
    };
}

- (WJButtonMaker *(^)(UIImage *, UIControlState))imageForState {
    return ^WJButtonMaker *(UIImage *image, UIControlState state) {
        [self.button setImage:image forState:state];
        return self;
    };
}

- (WJButtonMaker *(^)(UIImage *, UIControlState))backgroundImageForState {
    return ^WJButtonMaker *(UIImage *image, UIControlState state) {
        [self.button setBackgroundImage:image forState:state];
        return self;
    };
}

@end
