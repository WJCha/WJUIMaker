//
//  WJUIViewMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WJUIViewMaker;

#pragma mark - Category

@interface UIView (WJMaker)

+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJUIViewMaker *make))block;
- (void)wj_makeView:(void(^)(WJUIViewMaker *make))block;
- (void)wj_addToSuperView:(UIView *)superView;

@end



#pragma mark - MainClass

@interface WJUIViewMaker : NSObject

/// 禁用该初始化方法
- (instancetype)init NS_UNAVAILABLE;
/// 指定构造器
- (instancetype)initWithView:(UIView *)view NS_DESIGNATED_INITIALIZER;


@property (nonatomic, strong, readonly) UIView *view;

@property (nonatomic, copy, readonly) WJUIViewMaker *(^tag)(NSInteger tag);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^userInteractionEnabled)(BOOL userInteractionEnabled);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^frame)(CGRect frame);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^clipsToBounds)(BOOL clipsToBounds);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^backgroundColor)(UIColor *backgroundColor);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^alpha)(CGFloat alpha);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^hidden)(BOOL hidden);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^cornerRadius)(CGFloat cornerRadius);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^border)(CGFloat borderWidth, UIColor *borderColor);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^contentMode)(UIViewContentMode contentMode);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^transform)(CGAffineTransform transform);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^maskView)(UIView *maskView);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^tintColor)(UIColor *tintColor);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^addToSuperView)(UIView *superView);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^addSubview)(UIView *subview);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^addGestureRecognizer)(UIGestureRecognizer * gestureRecognizer);

@property (nonatomic, copy, readonly) WJUIViewMaker *(^shadowColor)(CGColorRef shadowColor);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^shadowOpacity)(float shadowOpacity);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^shadowOffset)(CGSize shadowOffset);
@property (nonatomic, copy, readonly) WJUIViewMaker *(^shadowRadius)(CGFloat shadowRadius);



@end
