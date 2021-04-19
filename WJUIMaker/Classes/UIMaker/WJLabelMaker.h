//
//  WJLabelMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJUIViewMaker.h"
@class WJLabelMaker;


#pragma mark - === Category ===

@interface UILabel (WJMaker)

+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJLabelMaker *make))block;
- (void)wj_makeView:(void(^)(WJLabelMaker *make))block;

@end



#pragma mark - === MainClass ===

@interface WJLabelMaker : WJUIViewMaker

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;
- (instancetype)initWithLabel:(UILabel *)label NS_DESIGNATED_INITIALIZER;


@property (nonatomic, strong, readonly) UILabel *label;

@property (nonatomic, copy, readonly) WJLabelMaker *(^text)(NSString *text);
@property (nonatomic, copy, readonly) WJLabelMaker *(^font)(UIFont *font);
@property (nonatomic, copy, readonly) WJLabelMaker *(^textColor)(UIColor *textColor);
@property (nonatomic, copy, readonly) WJLabelMaker *(^numberOfLines)(NSInteger numberOfLines);
@property (nonatomic, copy, readonly) WJLabelMaker *(^textAlignment)(NSTextAlignment textAlignment);
@property (nonatomic, copy, readonly) WJLabelMaker *(^lineBreakMode)(NSLineBreakMode lineBreakMode);
@property (nonatomic, copy, readonly) WJLabelMaker *(^attributedString)(NSAttributedString *attributedString);
@property (nonatomic, copy, readonly) WJLabelMaker *(^userInteractionEnabled)(BOOL userInteractionEnabled);
@property (nonatomic, copy, readonly) WJLabelMaker *(^adjustsFontSizeToFitWidth)(BOOL adjustsFontSizeToFitWidth);
@property (nonatomic, copy, readonly) WJLabelMaker *(^preferredMaxLayoutWidth)(CGFloat preferredMaxLayoutWidth);


@end

