//
//  WJUIControlMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJUIViewMaker.h"


@interface WJUIControlMaker : WJUIViewMaker

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;
- (instancetype)initWithControl:(UIControl *)control NS_DESIGNATED_INITIALIZER;

@property (nonatomic, strong, readonly) UIControl *control;

@property (nonatomic, copy, readonly) WJUIControlMaker *(^enabled)(BOOL enabled);
@property (nonatomic, copy, readonly) WJUIControlMaker *(^selected)(BOOL selected);
@property (nonatomic, copy, readonly) WJUIControlMaker *(^highlighted)(BOOL highlighted);
@property (nonatomic, copy, readonly) WJUIControlMaker *(^addTarget)(id target, SEL action, UIControlEvents controlEvents);
@property (nonatomic, copy, readonly) WJUIControlMaker *(^removeTarget)(id target, SEL action, UIControlEvents controlEvents);
@property (nonatomic, copy, readonly) WJUIControlMaker *(^contentVerticalAlignment)(UIControlContentVerticalAlignment contentVerticalAlignment);
@property (nonatomic, copy, readonly) WJUIControlMaker *(^contentHorizontalAlignment)(UIControlContentHorizontalAlignment contentHorizontalAlignment);

@end

