//
//  WJScrollViewMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJUIViewMaker.h"
@class WJScrollViewMaker;

@interface UIScrollView (WJMaker)

+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJScrollViewMaker *make))block;
- (void)wj_makeView:(void(^)(WJScrollViewMaker *make))block;

@end




@interface WJScrollViewMaker : WJUIViewMaker

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;
- (instancetype)initWithScrollView:(UIScrollView *)scrollView NS_DESIGNATED_INITIALIZER;

#pragma mark - 属性

@property (nonatomic, strong, readonly) UIScrollView *scrollView;


@property (nonatomic, copy, readonly) WJScrollViewMaker *(^contentOffset)(CGPoint contentOffset);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^contentSize)(CGSize contentSize);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^contentInset)(UIEdgeInsets contentInset);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^delegate)(id<UIScrollViewDelegate> delegate);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^directionalLockEnabled)(BOOL directionalLockEnabled);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^bounces)(BOOL bounces);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^alwaysBounceVertical)(BOOL alwaysBounceVertical);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^alwaysBounceHorizontal)(BOOL alwaysBounceHorizontal);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^pagingEnabled)(BOOL pagingEnabled);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^scrollEnabled)(BOOL scrollEnabled);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^decelerationRate)(CGFloat decelerationRate);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^minimumZoomScale)(CGFloat minimumZoomScale);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^maximumZoomScale)(CGFloat maximumZoomScale);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^scrollIndicatorInsets)(UIEdgeInsets scrollIndicatorInsets);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^indicatorStyle)(UIScrollViewIndicatorStyle indicatorStyle);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^showsHorizontalScrollIndicator)(BOOL showsHorizontalScrollIndicator);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^showsVerticalScrollIndicator)(BOOL showsVerticalScrollIndicator);
@property (nonatomic, copy, readonly) WJScrollViewMaker *(^keyboardDismissMode)(UIScrollViewKeyboardDismissMode keyboardDismissMode);

@end

