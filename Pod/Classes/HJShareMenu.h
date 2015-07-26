//
//  HJShareMenu.h
//  Pods
//
//  Created by hujie on 15/7/26.
//
//

#import <UIKit/UIKit.h>

//Model
#import "HJShareMenuItem.h"


@class HJShareMenu;

@protocol HJShareMenuDelegate <NSObject>

- (void)hj_shareMenu:(HJShareMenu *)shareMenu selectedAtIndex:(NSInteger)index;

@end


@interface HJShareMenu : UIView

@property (nonatomic, assign)id<HJShareMenuDelegate> delegate;

- (id)initWithMenuItems:(NSArray *)items;

- (void)showMenu;

- (void)hideMenu;

@end
