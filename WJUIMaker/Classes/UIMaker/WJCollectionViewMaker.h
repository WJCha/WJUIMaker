//
//  WJCollectionViewMaker.h
//  WJUIMaker
//
//  Created by 陈威杰 on 2020/11/7.
//  Copyright © 2020 陈威杰. All rights reserved.
//

#import "WJScrollViewMaker.h"
@class WJCollectionViewMaker;


#pragma mark - === Category ===

@interface UICollectionView (WJMaker)

+ (instancetype)wj_makeViewWithFrame:(CGRect)frame
                              layout:(UICollectionViewLayout *)layout
                               block:(NS_NOESCAPE void(^)(WJCollectionViewMaker *make))block;

+ (instancetype)wj_makeViewWithFrame:(CGRect)frame
                               block:(void(^)(WJCollectionViewMaker *make))block;

+ (instancetype)wj_makeView:(NS_NOESCAPE void(^)(WJCollectionViewMaker *make))block;

- (void)wj_makeView:(void(^)(WJCollectionViewMaker *make))block;

@end


#pragma mark - === MainClass ===


@interface WJCollectionViewMaker : WJScrollViewMaker

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithView:(UIView *)view NS_UNAVAILABLE;
- (instancetype)initWithScrollView:(UIScrollView *)scrollView NS_UNAVAILABLE;
- (instancetype)initWithCollectionView:(UICollectionView *)collectionView NS_DESIGNATED_INITIALIZER;

@property (nonatomic, strong, readonly) UICollectionView *collectionView;

@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^collectionViewLayout)(UICollectionViewLayout * collectionViewLayout);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^delegate)(id <UICollectionViewDelegate> delegate);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^dataSource)(id <UICollectionViewDataSource> dataSource);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^backgroundView)(UIView * backgroundView);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^registerClassForCellWithReuseIdentifier)(Class cellClass, NSString * identifier);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^registerNibForCellWithReuseIdentifier)(UINib * nib, NSString * identifier);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^registerClassForSupplementaryViewOfKindWithReuseIdentifier)(Class viewClass, NSString * elementKind, NSString * identifier);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^registerNibForSupplementaryViewOfKindWithReuseIdentifier)(UINib * nib, NSString * elementKind, NSString * identifier);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^allowsSelection)(BOOL allowsSelection);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^allowsMultipleSelection)(BOOL allowsMultipleSelection);

@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^prefetchDataSource)(id<UICollectionViewDataSourcePrefetching> prefetchDataSource) NS_AVAILABLE_IOS(10_0);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^prefetchingEnabled)(BOOL prefetchingEnabled) NS_AVAILABLE_IOS(10_0);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^dragDelegate)(id <UICollectionViewDragDelegate> dragDelegate) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^dropDelegate)(id <UICollectionViewDropDelegate> dropDelegate) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^dragInteractionEnabled)(BOOL dragInteractionEnabled) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);
@property (nonatomic, copy, readonly) WJCollectionViewMaker *(^reorderingCadence)(UICollectionViewReorderingCadence reorderingCadence) API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@end
