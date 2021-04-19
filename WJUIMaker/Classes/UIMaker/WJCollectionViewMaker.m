//
//  WJCollectionViewMaker.m
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/7.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJCollectionViewMaker.h"

@implementation UICollectionView (WJMaker)

+ (instancetype)wj_makeViewWithFrame:(CGRect)frame
                              layout:(UICollectionViewLayout *)layout
                               block:(NS_NOESCAPE void(^)(WJCollectionViewMaker *make))block {
    UICollectionView *collectionView = [[UICollectionView alloc] initWithFrame:frame collectionViewLayout:layout];
    [collectionView wj_makeView:block];
    return collectionView;
}

+ (instancetype)wj_makeViewWithFrame:(CGRect)frame
                               block:(void(^)(WJCollectionViewMaker *make))block {
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    return [UICollectionView wj_makeViewWithFrame:frame layout:layout block:block];
}

+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJCollectionViewMaker *make))block {
    return [UICollectionView wj_makeViewWithFrame:CGRectZero block:block];
}

- (void)wj_makeView:(void(^)(WJCollectionViewMaker *make))block {
    WJCollectionViewMaker *maker = [[WJCollectionViewMaker alloc] initWithCollectionView:self];
    block ? block(maker) : nil;
}

@end

#pragma mark - ========================================================


@interface WJCollectionViewMaker ()

@property (nonatomic, strong, readwrite) UICollectionView *collectionView;

@end


@implementation WJCollectionViewMaker

@dynamic delegate;

- (instancetype)initWithCollectionView:(UICollectionView *)collectionView {
    if (self = [super initWithScrollView:collectionView]) {
        self.collectionView = collectionView;
    }
    return self;
}

- (WJCollectionViewMaker *(^)(UICollectionViewLayout *))collectionViewLayout {
    return ^WJCollectionViewMaker *(UICollectionViewLayout * collectionViewLayout) {
        [self.collectionView setCollectionViewLayout:collectionViewLayout];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(id<UICollectionViewDelegate>))delegate {
    return ^WJCollectionViewMaker *(id<UICollectionViewDelegate> delegate) {
//        [self.collectionView setDelegate:delegate];
        self.collectionView.delegate = delegate;
        return self;
    };
}
- (WJCollectionViewMaker *(^)(id<UICollectionViewDataSource>))dataSource {
    return ^WJCollectionViewMaker *(id<UICollectionViewDataSource> dataSource) {
//        [self.collectionView setDataSource:dataSource];
        self.collectionView.dataSource = dataSource;
        return self;
    };
}
- (WJCollectionViewMaker *(^)(id<UICollectionViewDataSourcePrefetching>))prefetchDataSource {
    return ^WJCollectionViewMaker *(id<UICollectionViewDataSourcePrefetching> prefetchDataSource) {
        [self.collectionView setPrefetchDataSource:prefetchDataSource];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(BOOL))prefetchingEnabled {
    return ^WJCollectionViewMaker *(BOOL prefetchingEnabled) {
        [self.collectionView setPrefetchingEnabled:prefetchingEnabled];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(id<UICollectionViewDragDelegate>))dragDelegate {
    return ^WJCollectionViewMaker *(id<UICollectionViewDragDelegate> dragDelegate) {
        [self.collectionView setDragDelegate:dragDelegate];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(id<UICollectionViewDropDelegate>))dropDelegate {
    return ^WJCollectionViewMaker *(id<UICollectionViewDropDelegate> dropDelegate) {
        [self.collectionView setDropDelegate:dropDelegate];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(BOOL))dragInteractionEnabled {
    return ^WJCollectionViewMaker *(BOOL dragInteractionEnabled) {
        [self.collectionView setDragInteractionEnabled:dragInteractionEnabled];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(UICollectionViewReorderingCadence))reorderingCadence {
    return ^WJCollectionViewMaker *(UICollectionViewReorderingCadence reorderingCadence) {
        [self.collectionView setReorderingCadence:reorderingCadence];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(UIView *))backgroundView {
    return ^WJCollectionViewMaker *(UIView * backgroundView) {
        [self.collectionView setBackgroundView:backgroundView];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(Class, NSString *))registerClassForCellWithReuseIdentifier {
    return ^WJCollectionViewMaker *(Class cellClass, NSString * identifier) {
        [self.collectionView registerClass:cellClass forCellWithReuseIdentifier:identifier];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(UINib *, NSString *))registerNibForCellWithReuseIdentifier {
    return ^WJCollectionViewMaker *(UINib * nib, NSString * identifier) {
        [self.collectionView registerNib:nib forCellWithReuseIdentifier:identifier];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(Class, NSString *, NSString *))registerClassForSupplementaryViewOfKindWithReuseIdentifier {
    return ^WJCollectionViewMaker *(Class viewClass, NSString * elementKind, NSString * identifier) {
        [self.collectionView registerClass:viewClass
            forSupplementaryViewOfKind:elementKind
                   withReuseIdentifier:identifier];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(UINib *, NSString *, NSString *))registerNibForSupplementaryViewOfKindWithReuseIdentifier {
    return ^WJCollectionViewMaker *(UINib * nib, NSString * elementKind, NSString * identifier) {
        [self.collectionView registerNib:nib
          forSupplementaryViewOfKind:elementKind
                 withReuseIdentifier:identifier];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(BOOL))allowsSelection {
    return ^WJCollectionViewMaker *(BOOL allowsSelection) {
        [self.collectionView setAllowsSelection:allowsSelection];
        return self;
    };
}
- (WJCollectionViewMaker *(^)(BOOL))allowsMultipleSelection {
    return ^WJCollectionViewMaker *(BOOL allowsMultipleSelection) {
        [self.collectionView setAllowsMultipleSelection:allowsMultipleSelection];
        return self;
    };
}

@end
