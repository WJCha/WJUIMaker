//
//  WJTextFieldMaker.m
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/7.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJTextFieldMaker.h"

@implementation UITextField (WJMaker)

+ (UITextField *)wj_makeView:(NS_NOESCAPE void(^)(WJTextFieldMaker *make))block {
    UITextField *textField = [[UITextField alloc] init];
    [textField wj_makeView:block];
    return textField;
}
- (void)wj_makeView:(void(^)(WJTextFieldMaker *make))block {
    WJTextFieldMaker *maker = [[WJTextFieldMaker alloc] initWithTextField:self];
    block ? block(maker) : nil;
}

@end


#pragma mark - ========================================================

@interface WJTextFieldMaker ()

@property (nonatomic, strong, readwrite) UITextField *textField;

@end

@implementation WJTextFieldMaker

- (instancetype)initWithTextField:(UITextField *)textField {
    if (self = [super initWithControl:textField]) {
        self.textField = textField;
    }
    return self;
}

- (WJTextFieldMaker *(^)(UIKeyboardType))keyboardType {
    return ^WJTextFieldMaker *(UIKeyboardType keyboardType) {
        self.textField.keyboardType = keyboardType;
        return self;
    };
}

- (WJTextFieldMaker *(^)(UIReturnKeyType))returnKeyType {
    return ^WJTextFieldMaker *(UIReturnKeyType returnKeyType) {
        self.textField.returnKeyType = returnKeyType;
        return self;
    };
}

- (WJTextFieldMaker *(^)(NSString *))text {
    return ^WJTextFieldMaker *(NSString * text) {
        [self.textField setText:text];
        return self;
    };
}
- (WJTextFieldMaker *(^)(NSAttributedString *))attributedText {
    return ^WJTextFieldMaker *(NSAttributedString * attributedText) {
        [self.textField setAttributedText:attributedText];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UIColor *))textColor {
    return ^WJTextFieldMaker *(UIColor * textColor) {
        [self.textField setTextColor:textColor];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UIFont *))font {
    return ^WJTextFieldMaker *(UIFont * font) {
        [self.textField setFont:font];
        return self;
    };
}
- (WJTextFieldMaker *(^)(NSTextAlignment))textAlignment {
    return ^WJTextFieldMaker *(NSTextAlignment textAlignment) {
        [self.textField setTextAlignment:textAlignment];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UITextBorderStyle))borderStyle {
    return ^WJTextFieldMaker *(UITextBorderStyle borderStyle) {
        [self.textField setBorderStyle:borderStyle];
        return self;
    };
}
- (WJTextFieldMaker *(^)(NSString *))placeholder {
    return ^WJTextFieldMaker *(NSString * placeholder) {
        [self.textField setPlaceholder:placeholder];
        return self;
    };
}
- (WJTextFieldMaker *(^)(NSAttributedString *))attributedPlaceholder {
    return ^WJTextFieldMaker *(NSAttributedString * attributedPlaceholder) {
        [self.textField setAttributedText:attributedPlaceholder];
        return self;
    };
}
- (WJTextFieldMaker *(^)(BOOL))clearsOnBeginEditing {
    return ^WJTextFieldMaker *(BOOL clearsOnBeginEditing) {
        [self.textField setClearsOnBeginEditing:clearsOnBeginEditing];
        return self;
    };
}
- (WJTextFieldMaker *(^)(BOOL))adjustsFontSizeToFitWidth {
    return ^WJTextFieldMaker *(BOOL adjustsFontSizeToFitWidth) {
        [self.textField setAdjustsFontSizeToFitWidth:adjustsFontSizeToFitWidth];
        return self;
    };
}
- (WJTextFieldMaker *(^)(CGFloat))minimumFontSize {
    return ^WJTextFieldMaker *(CGFloat minimumFontSize) {
        [self.textField setMinimumFontSize:minimumFontSize];
        return self;
    };
}
- (WJTextFieldMaker *(^)(id<UITextFieldDelegate>))delegate {
    return ^WJTextFieldMaker *(id<UITextFieldDelegate> delegate) {
        [self.textField setDelegate:delegate];
        return self;
    };
}

- (WJTextFieldMaker *(^)(BOOL))enablesReturnKeyAutomatically {
    return ^WJTextFieldMaker * (BOOL enablesReturnKeyAutomatically) {
        self.textField.enablesReturnKeyAutomatically = enablesReturnKeyAutomatically;
        return self;
    };
}

- (WJTextFieldMaker *(^)(UIImage *))background {
    return ^WJTextFieldMaker *(UIImage * background) {
        [self.textField setBackground:background];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UIImage *))disabledBackground {
    return ^WJTextFieldMaker *(UIImage * disabledBackground) {
        [self.textField setDisabledBackground:disabledBackground];
        return self;
    };
}
- (WJTextFieldMaker *(^)(BOOL))allowsEditingTextAttributes {
    return ^WJTextFieldMaker *(BOOL allowsEditingTextAttributes) {
        [self.textField setAllowsEditingTextAttributes:allowsEditingTextAttributes];
        return self;
    };
}
- (WJTextFieldMaker *(^)(NSDictionary<NSString *,id> *))typingAttributes {
    return ^WJTextFieldMaker *(NSDictionary<NSString *,id> * typingAttributes) {
        [self.textField setTypingAttributes:typingAttributes];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UITextFieldViewMode))clearButtonMode {
    return ^WJTextFieldMaker *(UITextFieldViewMode clearButtonMode) {
        [self.textField setClearButtonMode:clearButtonMode];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UIView *))leftView {
    return ^WJTextFieldMaker *(UIView * leftView) {
        [self.textField setLeftView:leftView];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UITextFieldViewMode))leftViewMode {
    return ^WJTextFieldMaker *(UITextFieldViewMode leftViewMode) {
        [self.textField setLeftViewMode:leftViewMode];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UIView *))rightView {
    return ^WJTextFieldMaker *(UIView * rightView) {
        [self.textField setRightView:rightView];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UITextFieldViewMode))rightViewMode {
    return ^WJTextFieldMaker *(UITextFieldViewMode rightViewMode) {
        [self.textField setRightViewMode:rightViewMode];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UIView *))inputView {
    return ^WJTextFieldMaker *(UIView * inputView) {
        [self.textField setInputView:inputView];
        return self;
    };
}
- (WJTextFieldMaker *(^)(UIView *))inputAccessoryView {
    return ^WJTextFieldMaker *(UIView * inputAccessoryView) {
        [self.textField setInputAccessoryView:inputAccessoryView];
        return self;
    };
}

@end
