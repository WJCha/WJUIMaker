//
//  WJTableViewMaker.m
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/7.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJTableViewMaker.h"

@implementation UITableView (WJMaker)

+ (instancetype)wj_makeView:(CGRect)frame style:(UITableViewStyle)style block:(NS_NOESCAPE void(^)(WJTableViewMaker *make))block {
    UITableView *tableView = [[UITableView alloc] initWithFrame:frame style:style];
    [tableView wj_makeView:block];
    return tableView;
}
+ (instancetype)wj_makeViewStyle:(UITableViewStyle)style block:(void(^)(WJTableViewMaker *make))block {
    return [UITableView wj_makeView:CGRectZero style:style block:block];
}
+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJTableViewMaker *make))block {
    return [UITableView wj_makeViewStyle:UITableViewStylePlain block:block];
}
- (void)wj_makeView:(void(^)(WJTableViewMaker *make))block {
    WJTableViewMaker *maker = [[WJTableViewMaker alloc] initWithTableView:self];
    block ? block(maker) : nil;
}

@end

#pragma mark - ========================================================


@interface WJTableViewMaker ()

@property (nonatomic, strong, readwrite) UITableView *tableView;

@end

@implementation WJTableViewMaker

@dynamic delegate;

- (instancetype)initWithTableView:(UITableView *)tableView {
    if (self = [super initWithScrollView:tableView]) {
        self.tableView = tableView;
    }
    return self;
}

- (WJTableViewMaker *(^)(id<UITableViewDataSource>))dataSource {
    return ^WJTableViewMaker *(id<UITableViewDataSource> dataSource) {
        [self.tableView setDataSource:dataSource];
        return self;
    };
}
- (WJTableViewMaker *(^)(id<UITableViewDelegate>))delegate {
    return ^WJTableViewMaker *(id<UITableViewDelegate> delegate) {
        [self.tableView setDelegate:delegate];
        return self;
    };
}
- (WJTableViewMaker *(^)(id<UITableViewDataSourcePrefetching>))prefetchDataSource {
    return ^WJTableViewMaker *(id<UITableViewDataSourcePrefetching> prefetchDataSource) {
        [self.tableView setPrefetchDataSource:prefetchDataSource];
        return self;
    };
}
- (WJTableViewMaker *(^)(id<UITableViewDragDelegate>))dragDelegate {
    return ^WJTableViewMaker *(id<UITableViewDragDelegate> dragDelegate) {
        [self.tableView setDragDelegate:dragDelegate];
        return self;
    };
}
- (WJTableViewMaker *(^)(id<UITableViewDropDelegate>))dropDelegate {
    return ^WJTableViewMaker *(id<UITableViewDropDelegate> dropDelegate) {
        [self.tableView setDropDelegate:dropDelegate];
        return self;
    };
}
- (WJTableViewMaker *(^)(CGFloat))rowHeight {
    return ^WJTableViewMaker *(CGFloat rowHeight) {
        [self.tableView setRowHeight:rowHeight];
        return self;
    };
}
- (WJTableViewMaker *(^)(CGFloat))sectionHeaderHeight {
    return ^WJTableViewMaker *(CGFloat sectionHeaderHeight) {
        [self.tableView setSectionHeaderHeight:sectionHeaderHeight];
        return self;
    };
}
- (WJTableViewMaker *(^)(CGFloat))sectionFooterHeight {
    return ^WJTableViewMaker *(CGFloat sectionFooterHeight) {
        [self.tableView setSectionFooterHeight:sectionFooterHeight];
        return self;
    };
}
- (WJTableViewMaker *(^)(CGFloat))estimatedRowHeight {
    return ^WJTableViewMaker *(CGFloat estimatedRowHeight) {
        [self.tableView setEstimatedRowHeight:estimatedRowHeight];
        return self;
    };
}
- (WJTableViewMaker *(^)(CGFloat))estimatedSectionHeaderHeight {
    return ^WJTableViewMaker *(CGFloat estimatedSectionHeaderHeight) {
        [self.tableView setEstimatedSectionHeaderHeight:estimatedSectionHeaderHeight];
        return self;
    };
}
- (WJTableViewMaker *(^)(CGFloat))estimatedSectionFooterHeight {
    return ^WJTableViewMaker *(CGFloat estimatedSectionFooterHeight) {
        [self.tableView setEstimatedSectionFooterHeight:estimatedSectionFooterHeight];
        return self;
    };
}
- (WJTableViewMaker *(^)(UIEdgeInsets))separatorInset {
    return ^WJTableViewMaker *(UIEdgeInsets separatorInset) {
        [self.tableView setSeparatorInset:separatorInset];
        return self;
    };
}
- (WJTableViewMaker *(^)(UIView *))backgroundView {
    return ^WJTableViewMaker *(UIView * backgroundView) {
        [self.tableView setBackgroundView:backgroundView];
        return self;
    };
}
- (WJTableViewMaker *(^)(BOOL))editing {
    return ^WJTableViewMaker *(BOOL editing) {
        [self.tableView setEditing:editing];
        return self;
    };
}
- (WJTableViewMaker *(^)(BOOL))allowsSelection {
    return ^WJTableViewMaker *(BOOL allowsSelection) {
        [self.tableView setAllowsSelection:allowsSelection];
        return self;
    };
}
- (WJTableViewMaker *(^)(BOOL))allowsSelectionDuringEditing {
    return ^WJTableViewMaker *(BOOL allowsSelectionDuringEditing) {
        [self.tableView setAllowsSelectionDuringEditing:allowsSelectionDuringEditing];
        return self;
    };
}
- (WJTableViewMaker *(^)(BOOL))allowsMultipleSelection {
    return ^WJTableViewMaker *(BOOL allowsMultipleSelection) {
        [self.tableView setAllowsMultipleSelection:allowsMultipleSelection];
        return self;
    };
}
- (WJTableViewMaker *(^)(BOOL))allowsMultipleSelectionDuringEditing {
    return ^WJTableViewMaker *(BOOL allowsMultipleSelectionDuringEditing) {
        [self.tableView setAllowsMultipleSelectionDuringEditing:allowsMultipleSelectionDuringEditing];
        return self;
    };
}
- (WJTableViewMaker *(^)(NSInteger))sectionIndexMinimumDisplayRowCount {
    return ^WJTableViewMaker *(NSInteger sectionIndexMinimumDisplayRowCount) {
        [self.tableView setSectionIndexMinimumDisplayRowCount:sectionIndexMinimumDisplayRowCount];
        return self;
    };
}
- (WJTableViewMaker *(^)(UIColor *))sectionIndexColor {
    return ^WJTableViewMaker *(UIColor * sectionIndexColor) {
        [self.tableView setSectionIndexColor:sectionIndexColor];
        return self;
    };
}
- (WJTableViewMaker *(^)(UIColor *))sectionIndexBackgroundColor {
    return ^WJTableViewMaker *(UIColor * sectionIndexBackgroundColor) {
        [self.tableView setSectionIndexBackgroundColor:sectionIndexBackgroundColor];
        return self;
    };
}
- (WJTableViewMaker *(^)(UIColor *))sectionIndexTrackingBackgroundColor {
    return ^WJTableViewMaker *(UIColor * sectionIndexTrackingBackgroundColor) {
        [self.tableView setSectionIndexTrackingBackgroundColor:sectionIndexTrackingBackgroundColor];
        return self;
    };
}
- (WJTableViewMaker *(^)(UITableViewCellSeparatorStyle))separatorStyle {
    return ^WJTableViewMaker *(UITableViewCellSeparatorStyle separatorStyle) {
        [self.tableView setSeparatorStyle:separatorStyle];
        return self;
    };
}
- (WJTableViewMaker *(^)(UIColor *))separatorColor {
    return ^WJTableViewMaker *(UIColor * separatorColor) {
        [self.tableView setSeparatorColor:separatorColor];
        return self;
    };
}
- (WJTableViewMaker *(^)(UIVisualEffect *))separatorEffect {
    return ^WJTableViewMaker *(UIVisualEffect * separatorEffect) {
        [self.tableView setSeparatorEffect:separatorEffect];
        return self;
    };
}
- (WJTableViewMaker *(^)(UIView *))tableHeaderView {
    return ^WJTableViewMaker *(UIView * tableHeaderView) {
        [self.tableView setTableHeaderView:tableHeaderView];
        return self;
    };
}
- (WJTableViewMaker *(^)(UIView *))tableFooterView {
    return ^WJTableViewMaker *(UIView * tableFooterView) {
        [self.tableView setTableFooterView:tableFooterView];
        return self;
    };
}
- (WJTableViewMaker *(^)(UINib *, NSString *))registerNibForCellReuseIdentifier {
    return ^WJTableViewMaker *(UINib * nib, NSString *identifier) {
        [self.tableView registerNib:nib forCellReuseIdentifier:identifier];
        return self;
    };
}
- (WJTableViewMaker *(^)(Class, NSString *))registerClassForCellReuseIdentifier {
    return ^WJTableViewMaker *(Class cellClass, NSString *identifier) {
        [self.tableView registerClass:cellClass forCellReuseIdentifier:identifier];
        return self;
    };
}
- (WJTableViewMaker *(^)(UINib *, NSString *))registerNibForHeaderFooterViewReuseIdentifier {
    return ^WJTableViewMaker *(UINib * nib, NSString *identifier) {
        [self.tableView registerNib:nib forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}
- (WJTableViewMaker *(^)(Class, NSString *))registerClassForHeaderFooterViewReuseIdentifier {
    return ^WJTableViewMaker *(Class aClass, NSString *identifier) {
        [self.tableView registerClass:aClass forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}

@end
