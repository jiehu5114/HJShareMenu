//
//  HJShareMenuPageCell.m
//  Pods
//
//  Created by hujie on 15/7/26.
//
//

#import "HJShareMenuPageCell.h"

//cell
#import "HJShareMenuItemCell.h"


static NSString *const kShareMenuItemCellIdentifier = @"kShareMenuItemCellIdentifier";


@interface HJShareMenuPageCell () < UICollectionViewDataSource,
                                    UICollectionViewDelegate,
                                    UICollectionViewDelegateFlowLayout,
                                    HJShareMenuItemCellDelegate>

@property (nonatomic, strong)UICollectionView *pageCollectionView;


@end


@implementation HJShareMenuPageCell


#pragma mark - init
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self buildLayout];
        
    }
    return self;
}


#pragma mark - Life Cycle
- (void)buildLayout
{
    NSDictionary *viewsDic = @{@"_pageCollectionView":self.pageCollectionView};
    
    NSString *vflH = @"H:|-0-[_pageCollectionView]-0-|";
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vflH
                                                                 options:0
                                                                 metrics:nil
                                                                   views:viewsDic]];
    
    NSString *vflV = @"V:|-0-[_pageCollectionView]-0-|";
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:vflV
                                                                             options:0
                                                                             metrics:nil
                                                                               views:viewsDic]];
}


#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.menuPageItems.count;
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    HJShareMenuItem *menuItem = (HJShareMenuItem *)[self.menuPageItems objectAtIndex:indexPath.row];
    
    HJShareMenuItemCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:kShareMenuItemCellIdentifier forIndexPath:indexPath];
    
    [cell.menuItemButton setImage:menuItem.menuItemImage forState:UIControlStateNormal];
    cell.menuLabel.text  = menuItem.menuItemTitle;
    cell.delegate = self;
    
    return cell;
}


#pragma mark - HJShareMenuItemCellDelegate
- (void)menuItemCellDidTap:(HJShareMenuItemCell *)shareMenuItemCell
{
    NSIndexPath *selectedIndexPath = [self.pageCollectionView indexPathForCell:shareMenuItemCell];
    
    if(self.delegate && [self.delegate respondsToSelector:@selector(shareMenuPageCell:selectedAtIndex:)])
    {
        [self.delegate shareMenuPageCell:self selectedAtIndex:selectedIndexPath.row];
    }
}


#pragma mark - Property
- (UICollectionView *)pageCollectionView
{
    if (!_pageCollectionView) {
        UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
        flowLayout.sectionInset = UIEdgeInsetsMake(25.0,
                                                   0,
                                                   5,
                                                   0);
        flowLayout.itemSize = CGSizeMake(100.0, 100.0);
        _pageCollectionView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
        _pageCollectionView.backgroundColor = [UIColor clearColor];
        _pageCollectionView.delegate = self;
        _pageCollectionView.dataSource = self;
        [_pageCollectionView registerClass:[HJShareMenuItemCell class] forCellWithReuseIdentifier:kShareMenuItemCellIdentifier];
        _pageCollectionView.translatesAutoresizingMaskIntoConstraints = NO;
        [self.contentView addSubview:_pageCollectionView];
    }
    return _pageCollectionView;
}

@end


