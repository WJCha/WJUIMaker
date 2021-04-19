//
//  WJTableViewMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/7.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJScrollViewMaker.h"
@class WJTableViewMaker;

#pragma mark - === Category ===

@interface UITableView (WJMaker)

+ (instancetype)wj_makeView:(CGRect)frame style:(UITableViewStyle)style block:(NS_NOESCAPE void(^)(WJTableViewMaker *make))block;
+ (instancetype)wj_makeViewStyle:(UITableViewStyle)style block:(void(^)(WJTableViewMaker *make))block;
+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJTableViewMaker *make))block;
- (void)wj_makeView:(void(^)(WJTableViewMaker *make))block;

@end


#pragma mark - === MainClass ===

@interface WJTableViewMaker : WJScrollViewMaker

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;
- (instancetype)initWithScrollView:(UIScrollView *)scrollView NS_UNAVAILABLE;
- (instancetype)initWithTableView:(UITableView *)tableView NS_DESIGNATED_INITIALIZER;

@property (nonatomic, strong, readonly) UITableView *tableView;


@property (nonatomic, copy, readonly) WJTableViewMaker *(^dataSource)(id <UITableViewDataSource> dataSource);

@property (nonatomic, copy, readonly) WJTableViewMaker *(^delegate)(id <UITableViewDelegate> delegate);

@property (nonatomic, copy, readonly) WJTableViewMaker *(^prefetchDataSource)(id <UITableViewDataSourcePrefetching> prefetchDataSource) NS_AVAILABLE_IOS(10_0);

@property (nonatomic, copy, readonly) WJTableViewMaker *(^dragDelegate)(id <UITableViewDragDelegate> dragDelegate) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@property (nonatomic, copy, readonly) WJTableViewMaker *(^dropDelegate)(id <UITableViewDropDelegate> dropDelegate) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);


@property (nonatomic, copy, readonly) WJTableViewMaker *(^rowHeight)(CGFloat rowHeight);

@property (nonatomic, copy, readonly) WJTableViewMaker *(^sectionHeaderHeight)(CGFloat sectionHeaderHeight);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^sectionFooterHeight)(CGFloat sectionFooterHeight);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^estimatedRowHeight)(CGFloat estimatedRowHeight);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^estimatedSectionHeaderHeight)(CGFloat estimatedSectionHeaderHeight);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^estimatedSectionFooterHeight)(CGFloat estimatedSectionFooterHeight);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^separatorInset)(UIEdgeInsets separatorInset);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^backgroundView)(UIView * backgroundView);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^editing)(BOOL editing);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^allowsSelection)(BOOL allowsSelection);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^allowsSelectionDuringEditing)(BOOL allowsSelectionDuringEditing);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^allowsMultipleSelection)(BOOL allowsMultipleSelection);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^allowsMultipleSelectionDuringEditing)(BOOL allowsMultipleSelectionDuringEditing);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^sectionIndexMinimumDisplayRowCount)(NSInteger sectionIndexMinimumDisplayRowCount);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^sectionIndexColor)(UIColor * sectionIndexColor);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^sectionIndexBackgroundColor)(UIColor * sectionIndexBackgroundColor);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^sectionIndexTrackingBackgroundColor)(UIColor * sectionIndexTrackingBackgroundColor);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^separatorStyle)(UITableViewCellSeparatorStyle  separatorStyle);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^separatorColor)(UIColor * separatorColor);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^separatorEffect)(UIVisualEffect * separatorEffect);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^tableHeaderView)(UIView * tableHeaderView);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^tableFooterView)(UIView * tableFooterView);

@property (nonatomic, copy, readonly) WJTableViewMaker *(^registerNibForCellReuseIdentifier)(UINib * nib, NSString *identifier);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^registerClassForCellReuseIdentifier)(Class cellClass, NSString *identifier);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^registerNibForHeaderFooterViewReuseIdentifier)(UINib * nib, NSString *identifier);
@property (nonatomic, copy, readonly) WJTableViewMaker *(^registerClassForHeaderFooterViewReuseIdentifier)(Class aClass, NSString *identifier);


@end

