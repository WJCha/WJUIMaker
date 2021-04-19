//
//  WJUIMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/6.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#ifndef WJUIMaker_h
#define WJUIMaker_h

/// 懒加载
#define WJLazy(object, assignment)  (object = object ?: assignment)

#import "WJUIViewMaker.h"
#import "WJLabelMaker.h"
#import "WJImageViewMaker.h"
#import "WJScrollViewMaker.h"
#import "WJButtonMaker.h"
#import "WJTableViewMaker.h"
#import "WJCollectionViewMaker.h"
#import "WJTextFieldMaker.h"
#import "WJTextViewMaker.h"

#endif /* WJUIMaker_h */
