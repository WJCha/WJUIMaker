//
//  WJButtonMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJUIControlMaker.h"
@class WJButtonMaker;


#pragma mark - === Category ===

@interface UIButton (WJMaker)

+ (instancetype)wj_makeView:(UIButtonType)buttonType block:(NS_NOESCAPE void(^)(WJButtonMaker *make))block;
+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJButtonMaker *make))block;
- (void)wj_makeView:(void(^)(WJButtonMaker *make))block;

@end



#pragma mark - === MainClass === 

@interface WJButtonMaker : WJUIControlMaker

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithControl:(UIControl *)control NS_UNAVAILABLE;
- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;
- (instancetype)initWithButton:(UIButton *)button NS_DESIGNATED_INITIALIZER;

@property (nonatomic, strong, readonly) UIButton *button;

@property (nonatomic, copy, readonly) WJButtonMaker *(^contentEdgeInsets)(UIEdgeInsets contentEdgeInsets);
@property (nonatomic, copy, readonly) WJButtonMaker *(^titleEdgeInsets)(UIEdgeInsets titleEdgeInsets);
@property (nonatomic, copy, readonly) WJButtonMaker *(^imageEdgeInsets)(UIEdgeInsets imageEdgeInsets);

@property (nonatomic, copy, readonly) WJButtonMaker *(^tintColor)(UIColor *tintColor);
@property (nonatomic, copy, readonly) WJButtonMaker *(^titleForState)(NSString *title, UIControlState state);
@property (nonatomic, copy, readonly) WJButtonMaker *(^titleColorForState)(UIColor *color, UIControlState state);
@property (nonatomic, copy, readonly) WJButtonMaker *(^titleFont)(UIFont *titleFont);
@property (nonatomic, copy, readonly) WJButtonMaker *(^imageForState)(UIImage *image, UIControlState state);
@property (nonatomic, copy, readonly) WJButtonMaker *(^backgroundImageForState)(UIImage *image, UIControlState state);
@property (nonatomic, copy, readonly) WJButtonMaker *(^attributedTitleForState)(NSAttributedString *attributedString, UIControlState state);


@end

