//
//  WJLabelMaker.m
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJLabelMaker.h"

@implementation UILabel (WJMaker)

+ (instancetype)wj_makeView:(NS_NOESCAPE void (^)(WJLabelMaker *))block {
    UILabel *label = [[UILabel alloc] init];
    [label wj_makeView:block];
    return label;
}

- (void)wj_makeView:(void (^)(WJLabelMaker *maker))block {
    WJLabelMaker *maker = [[WJLabelMaker alloc] initWithLabel:self];
    block ? block(maker) : nil;
}

@end



#pragma mark - ========================================================


@interface WJLabelMaker ()

@property (nonatomic, strong, readwrite) UILabel *label;

@end

@implementation WJLabelMaker

- (instancetype)initWithLabel:(UILabel *)label {
    if (self = [super initWithView:label]) {
        self.label = label;
    }
    return self;
}



- (WJLabelMaker *(^)(NSString *))text {
    return ^WJLabelMaker *(NSString *text) {
        self.label.text = text;
        return self;
    };
}

- (WJLabelMaker *(^)(UIFont *))font {
    return ^WJLabelMaker *(UIFont *font) {
        self.label.font = font;
        return self;
    };
}

- (WJLabelMaker *(^)(UIColor *))textColor {
    return ^WJLabelMaker *(UIColor *textColor) {
        self.label.textColor = textColor;
        return self;
    };
}

- (WJLabelMaker *(^)(NSInteger))numberOfLines {
    return ^WJLabelMaker *(NSInteger numberOfLines) {
        self.label.numberOfLines = numberOfLines;
        return self;
    };
}

- (WJLabelMaker *(^)(NSTextAlignment))textAlignment {
    return ^WJLabelMaker *(NSTextAlignment textAlignment) {
        self.label.textAlignment = textAlignment;
        return self;
    };
}

- (WJLabelMaker *(^)(NSLineBreakMode))lineBreakMode {
    return ^WJLabelMaker *(NSLineBreakMode lineBreakMode) {
        self.label.lineBreakMode = lineBreakMode;
        return self;
    };
}

- (WJLabelMaker *(^)(NSAttributedString *))attributedString {
    return ^WJLabelMaker *(NSAttributedString *attributedString) {
        self.label.attributedText = attributedString;
        return self;
    };
}

- (WJLabelMaker *(^)(BOOL))userInteractionEnabled {
    return ^WJLabelMaker *(BOOL userInteractionEnabled) {
        self.label.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (WJLabelMaker *(^)(BOOL))adjustsFontSizeToFitWidth {
    return ^WJLabelMaker *(BOOL adjustsFontSizeToFitWidth) {
        self.label.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}

- (WJLabelMaker *(^)(CGFloat))preferredMaxLayoutWidth {
    return ^WJLabelMaker *(CGFloat preferredMaxLayoutWidth) {
        self.label.preferredMaxLayoutWidth = preferredMaxLayoutWidth;
        return self;
    };
}

@end
