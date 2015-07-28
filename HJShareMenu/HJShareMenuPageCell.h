//
//  HJShareMenuPageCell.h
//  Pods
//
//  Created by hujie on 15/7/26.
//
//

#import <UIKit/UIKit.h>

#import "HJShareMenuItem.h"


@class  HJShareMenuPageCell;


@protocol HJShareMenuPageCellDelegate <NSObject>

- (void)shareMenuPageCell:(HJShareMenuPageCell *)pageCell
          selectedAtIndex:(NSInteger)index;

@end


@interface HJShareMenuPageCell : UICollectionViewCell

@property (nonatomic, assign) id<HJShareMenuPageCellDelegate> delegate;


@property (nonatomic, strong) NSArray *menuPageItems;


@end
