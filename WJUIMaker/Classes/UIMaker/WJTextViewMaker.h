//
//  WJTextViewMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/7.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJScrollViewMaker.h"
@class WJTextViewMaker;

#pragma mark - === Category ===

@interface UITextView (WJMaker)

+ (UITextView *)wj_makeView:(NS_NOESCAPE void(^)(WJTextViewMaker *make))block;
- (void)wj_makeView:(void(^)(WJTextViewMaker *make))block;

@end



#pragma mark - === MainClass ===

@interface WJTextViewMaker : WJScrollViewMaker

- (instancetype)initWithScrollView:(UIScrollView *)scrollView NS_UNAVAILABLE;
- (instancetype)initWithTextView:(UITextView *)textView NS_DESIGNATED_INITIALIZER;


@property (nonatomic, strong, readonly) UITextView *textView;


@property (nonatomic, copy, readonly) WJTextViewMaker *(^delegate)(id<UITextViewDelegate> delegate);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^text)(NSString * text);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^font)(UIFont * font);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^textColor)(UIColor * textColor);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^selectedRange)(NSRange selectedRange);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^editable)(BOOL editable);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^selectable)(BOOL selectable);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^dataDetectorTypes)(UIDataDetectorTypes dataDetectorTypes);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^allowsEditingTextAttributes)(BOOL allowsEditingTextAttributes);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^attributedText)(NSAttributedString * attributedText);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^typingAttributes)(NSDictionary<NSString *, id> * typingAttributes);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^inputView)(UIView * inputView);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^inputAccessoryView)(UIView * inputAccessoryView);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^clearsOnInsertion)(BOOL clearsOnInsertion);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^textContainerInset)(UIEdgeInsets textContainerInset);
@property (nonatomic, copy, readonly) WJTextViewMaker *(^linkTextAttributes)(NSDictionary<NSString *, id> * linkTextAttributes);

@end

