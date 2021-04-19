//
//  WJTextFieldMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/7.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJUIControlMaker.h"
@class WJTextFieldMaker;


#pragma mark - === Category ===

@interface UITextField (WJMaker)

+ (UITextField *)wj_makeView:(NS_NOESCAPE void(^)(WJTextFieldMaker *make))block;
- (void)wj_makeView:(void(^)(WJTextFieldMaker *make))block;

@end


#pragma mark - === MainClass ===


@interface WJTextFieldMaker : WJUIControlMaker

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithControl:(UIControl *)control NS_UNAVAILABLE;
- (instancetype)initWithTextField:(UITextField *)textField NS_DESIGNATED_INITIALIZER;


@property (nonatomic, strong, readonly) UITextField *textField;


@property (nonatomic, copy, readonly) WJTextFieldMaker *(^text)(NSString * text);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^attributedText)(NSAttributedString * attributedText);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^textColor)(UIColor * textColor);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^font)(UIFont * font);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^borderStyle)(UITextBorderStyle borderStyle);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^placeholder)(NSString * placeholder);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^keyboardType)(UIKeyboardType keyboardType);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^returnKeyType)(UIReturnKeyType returnKeyType);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^attributedPlaceholder)(NSAttributedString * attributedPlaceholder);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^clearsOnBeginEditing)(BOOL clearsOnBeginEditing);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^minimumFontSize)(CGFloat minimumFontSize);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^delegate)(id<UITextFieldDelegate> delegate);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^background)(UIImage * background);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^disabledBackground)(UIImage * disabledBackground);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^allowsEditingTextAttributes)(BOOL  allowsEditingTextAttributes);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^typingAttributes)(NSDictionary<NSString *, id> * typingAttributes);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^clearButtonMode)(UITextFieldViewMode clearButtonMode);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^leftView)(UIView * leftView);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^leftViewMode)(UITextFieldViewMode leftViewMode);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^rightView)(UIView * rightView);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^rightViewMode)(UITextFieldViewMode rightViewMode);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^inputView)(UIView * inputView);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^inputAccessoryView)(UIView * inputAccessoryView);
@property (nonatomic, copy, readonly) WJTextFieldMaker *(^enablesReturnKeyAutomatically)(BOOL enablesReturnKeyAutomatically);

@end
