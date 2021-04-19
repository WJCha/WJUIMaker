//
//  WJTextViewMaker.m
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/7.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJTextViewMaker.h"

@implementation UITextView (WJMaker)


+ (UITextView *)wj_makeView:(NS_NOESCAPE void(^)(WJTextViewMaker *make))block {
    UITextView *textView = [[UITextView alloc] init];
    [textView wj_makeView:block];
    return textView;;
}
- (void)wj_makeView:(void(^)(WJTextViewMaker *make))block {
    WJTextViewMaker *maker = [[WJTextViewMaker alloc] initWithTextView:self];
    block ? block(maker) : nil;
}

@end

#pragma mark - ========================================================


@interface WJTextViewMaker ()

@property (nonatomic, strong, readwrite) UITextView *textView;

@end

@implementation WJTextViewMaker
@dynamic delegate;

- (instancetype)initWithTextView:(UITextView *)textView {
    if (self = [super initWithScrollView:textView]) {
        self.textView = textView;
    }
    return self;
}

- (WJTextViewMaker *(^)(id<UITextViewDelegate>))delegate {
    return ^WJTextViewMaker *(id<UITextViewDelegate> delegate) {
        [self.textView setDelegate:delegate];
        return self;
    };
}
- (WJTextViewMaker *(^)(NSString *))text {
    return ^WJTextViewMaker *(NSString * text) {
        [self.textView setText:text];
        return self;
    };
}
- (WJTextViewMaker *(^)(UIFont *))font {
    return ^WJTextViewMaker *(UIFont * font) {
        [self.textView setFont:font];
        return self;
    };
}
- (WJTextViewMaker *(^)(UIColor *))textColor {
    return ^WJTextViewMaker *(UIColor * textColor) {
        [self.textView setTextColor:textColor];
        return self;
    };
}
- (WJTextViewMaker *(^)(NSTextAlignment))textAlignment {
    return ^WJTextViewMaker *(NSTextAlignment textAlignment) {
        [self.textView setTextAlignment:textAlignment];
        return self;
    };
}
- (WJTextViewMaker *(^)(NSRange))selectedRange {
    return ^WJTextViewMaker *(NSRange selectedRange) {
        [self.textView setSelectedRange:selectedRange];
        return self;
    };
}
- (WJTextViewMaker *(^)(BOOL))editable {
    return ^WJTextViewMaker *(BOOL editable) {
        [self.textView setEditable:editable];
        return self;
    };
}
- (WJTextViewMaker *(^)(BOOL))selectable {
    return ^WJTextViewMaker *(BOOL selectable) {
        [self.textView setSelectable:selectable];
        return self;
    };
}
- (WJTextViewMaker *(^)(UIDataDetectorTypes))dataDetectorTypes {
    return ^WJTextViewMaker *(UIDataDetectorTypes dataDetectorTypes) {
        [self.textView setDataDetectorTypes:dataDetectorTypes];
        return self;
    };
}
- (WJTextViewMaker *(^)(BOOL))allowsEditingTextAttributes {
    return ^WJTextViewMaker *(BOOL allowsEditingTextAttributes) {
        [self.textView setAllowsEditingTextAttributes:allowsEditingTextAttributes];
        return self;
    };
}
- (WJTextViewMaker *(^)(NSAttributedString *))attributedText {
    return ^WJTextViewMaker *(NSAttributedString * attributedText) {
        [self.textView setAttributedText:attributedText];
        return self;
    };
}
- (WJTextViewMaker *(^)(NSDictionary<NSString *,id> *))typingAttributes {
    return ^WJTextViewMaker *(NSDictionary<NSString *,id> * typingAttributes) {
        [self.textView setTypingAttributes:typingAttributes];
        return self;
    };
}
- (WJTextViewMaker *(^)(UIView *))inputView {
    return ^WJTextViewMaker *(UIView * inputView) {
        [self.textView setInputView:inputView];
        return self;
    };
}
- (WJTextViewMaker *(^)(UIView *))inputAccessoryView {
    return ^WJTextViewMaker *(UIView * inputAccessoryView) {
        [self.textView setInputAccessoryView:inputAccessoryView];
        return self;
    };
}
- (WJTextViewMaker *(^)(BOOL))clearsOnInsertion {
    return ^WJTextViewMaker *(BOOL clearsOnInsertion) {
        [self.textView setClearsOnInsertion:clearsOnInsertion];
        return self;
    };
}
- (WJTextViewMaker *(^)(UIEdgeInsets))textContainerInset {
    return ^WJTextViewMaker *(UIEdgeInsets textContainerInset) {
        [self.textView setTextContainerInset:textContainerInset];
        return self;
    };
}
- (WJTextViewMaker *(^)(NSDictionary<NSString *,id> *))linkTextAttributes {
    return ^WJTextViewMaker *(NSDictionary<NSString *,id> * linkTextAttributes) {
        [self.textView setLinkTextAttributes:linkTextAttributes];
        return self;
    };
}

@end
