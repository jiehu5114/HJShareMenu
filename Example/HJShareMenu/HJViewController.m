//
//  HJViewController.m
//  HJShareMenu
//
//  Created by hujie on 07/26/2015.
//  Copyright (c) 2015 hujie. All rights reserved.
//

#import "HJViewController.h"

#import <HJShareMenu/HJShareMenu.h>



@interface HJViewController ()<HJShareMenuDelegate>

@end



@implementation HJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    UIActivityViewController
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - HJShareMenuDelegate
- (void)hj_shareMenu:(HJShareMenu *)shareMenu selectedAtIndex:(NSInteger)index
{
    NSLog(@"选中：%d",index);
}

- (IBAction)buttonClick:(id)sender {
    
    HJShareMenuItem *menuItem1 = [[HJShareMenuItem alloc] init];
    menuItem1.menuItemTitle  = @"发送给联系人";
    menuItem1.menuItemImage  = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareMail7.png"]];
    
    
    HJShareMenuItem *menuItem2 = [[HJShareMenuItem alloc] init];
    menuItem2.menuItemTitle  = @"分享到动态";
    menuItem2.menuItemImage =[UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"sharePhotos7.png"]];
    
    HJShareMenuItem *menuItem3 = [[HJShareMenuItem alloc] init];
    menuItem3.menuItemTitle  = @"收藏";
    menuItem3.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"1_09.png"]];
    
    
    HJShareMenu *shareMenu = [[HJShareMenu alloc] initWithMenuItems:[NSArray arrayWithObjects:menuItem1,menuItem2,menuItem3,
                                                                     menuItem1,menuItem2,menuItem3,
                                                                     menuItem1,nil]];
    shareMenu.delegate = self;
    [shareMenu showMenu];
}





@end
