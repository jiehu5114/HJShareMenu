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
    NSLog(@"选中：%ld",index);
    
}

- (IBAction)buttonClick:(id)sender {
    
    HJShareMenuItem *menuItem1 = [[HJShareMenuItem alloc] init];
    menuItem1.menuItemTitle  = kHJShareMenuLocalizedStrings(@"Mail");
    menuItem1.menuItemImage  = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareMail.png"]];
    
    HJShareMenuItem *menuItem2 = [[HJShareMenuItem alloc] init];
    menuItem2.menuItemTitle  = kHJShareMenuLocalizedStrings(@"Message");
    menuItem2.menuItemImage =[UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareMessage.png"]];
    
    HJShareMenuItem *menuItem3 = [[HJShareMenuItem alloc] init];
    menuItem3.menuItemTitle  = kHJShareMenuLocalizedStrings(@"Save to Camera Roll");
    menuItem3.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"sharePhotos.png"]];
    
    HJShareMenuItem *menuItem4 = [[HJShareMenuItem alloc] init];
    menuItem4.menuItemTitle  = kHJShareMenuLocalizedStrings(@"Sina Weibo");
    menuItem4.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareWeibo.png"]];
    
    HJShareMenuItem *menuItem5 = [[HJShareMenuItem alloc] init];
    menuItem5.menuItemTitle  = kHJShareMenuLocalizedStrings(@"Open in Safari");
    menuItem5.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareSafari.png"]];
    
    
    
    
    
    HJShareMenu *shareMenu = [[HJShareMenu alloc] initWithMenuItems:[NSArray arrayWithObjects:menuItem1,menuItem2,menuItem3,
                                                                     menuItem4,menuItem5,menuItem2,
                                                                     menuItem1,nil]];
    shareMenu.delegate = self;
    [shareMenu showMenu];
}





@end
