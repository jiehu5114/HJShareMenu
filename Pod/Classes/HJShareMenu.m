//
//  HJShareMenu.m
//  Pods
//
//  Created by hujie on 15/7/26.
//
//

#import "HJShareMenu.h"

//cell
#import "HJShareMenuPageCell.h"


typedef enum : NSUInteger {
    SingleLineMode,
    SinglePageMode,
    MultiPageMode,
} HJShareMenuMode;

static NSString * const kShareMenuPageCellIdentifier = @"kHJShareMenuPageCellIdentifier";

static const  NSInteger kShareMenuBackgroundColor    = 0xe1e3e4;
static const  CGFloat   kSeperateLineThick  = 0.5;

@interface HJShareMenu ()<  UICollectionViewDataSource,
                            UICollectionViewDelegate,
                            UICollectionViewDelegateFlowLayout>

@property (nonatomic, strong) UICollectionView *menuCollectionView;

@property (nonatomic, strong) NSArray  *menuItems;

@property (nonatomic, strong) UIButton *cancelButton;

@property (nonatomic, strong) UIView   *backgroundView;

@property (nonatomic, strong) UIView   *seperateLine;

@property (nonatomic, assign) HJShareMenuMode menuMode;

@property (nonatomic,assign) CGFloat pageViewHeight;

@property (nonatomic, strong) UIPageControl *pageControl;

@end


@implementation HJShareMenu

#pragma mark - init 
- (id)initWithMenuItems:(NSArray *)items
{
    self = [super init];
    if (self) {
        //设置数据
        self.menuItems  = items;
        if (self.menuItems.count  < 4) {
            self.menuMode  = SingleLineMode;
        }
        else if (self.menuItems.count < 7) {
            self.menuMode = SinglePageMode;
        }
        else {
            self.menuMode = MultiPageMode;
        }
        //布局
        [self buildLayout];
        
        //设置样式
        //self.backgroundColor  = [UIColor sj_colorWithHex:kShareMenuBackgroundColor];
    }
    return self;
}

#pragma mark  - Life Cycle
- (void) buildLayout
{
    NSDictionary *viewsDic = {@"menuCollectionView":self.menuCollectionView,};
    
}

#pragma mark - UICollectionViewDataSource


#pragma mark - UICollectionViewDelegate





@end
