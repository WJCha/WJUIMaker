//
//  WJUIControlMaker.m
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJUIControlMaker.h"

@interface WJUIControlMaker ()

@property (nonatomic, strong, readwrite) UIControl *control;

@end

@implementation WJUIControlMaker

- (instancetype)initWithControl:(UIControl *)control {
    if (self = [super initWithView:control]) {
        self.control = control;
    }
    return self;
}

- (WJUIControlMaker *(^)(BOOL))enabled {
    return ^WJUIControlMaker *(BOOL enable) {
        self.control.enabled = enable;
        return self;
    };
}

- (WJUIControlMaker *(^)(BOOL))selected {
    return ^WJUIControlMaker *(BOOL selected) {
        self.control.selected = selected;
        return self;
    };
}

- (WJUIControlMaker *(^)(BOOL))highlighted {
    return ^WJUIControlMaker *(BOOL highlighted) {
        self.control.highlighted = highlighted;
        return self;
    };
}

- (WJUIControlMaker *(^)(id, SEL, UIControlEvents))addTarget {
    return ^WJUIControlMaker *(id target, SEL action, UIControlEvents controlEvents) {
        [self.control addTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}

- (WJUIControlMaker *(^)(id, SEL, UIControlEvents))removeTarget {
    return ^WJUIControlMaker *(id target, SEL action, UIControlEvents controlEvents) {
        [self.control removeTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}

- (WJUIControlMaker *(^)(UIControlContentVerticalAlignment))contentVerticalAlignment {
    return ^WJUIControlMaker *(UIControlContentVerticalAlignment contentVerticalAlignment) {
        self.control.contentVerticalAlignment = contentVerticalAlignment;
        return self;
    };
}

- (WJUIControlMaker *(^)(UIControlContentHorizontalAlignment))contentHorizontalAlignment {
    return ^WJUIControlMaker *(UIControlContentHorizontalAlignment contentHorizontalAlignment) {
        self.control.contentHorizontalAlignment = contentHorizontalAlignment;
        return self;
    };
}

@end
