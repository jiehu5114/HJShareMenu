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


@property (nonatomic, strong)NSMutableArray *menuItems;


@end



@implementation HJViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *str1 = (NSLocalizedStringFromTableInBundle(@"hj", @"str", [NSBundle bundleForClass:[HJViewController class]], nil));
    
    NSBundle *bundle = [NSBundle bundleForClass:[HJShareMenu class]];
    
    NSString *str = (NSLocalizedStringFromTableInBundle(@"cancel", @"HJShareMenu", [NSBundle bundleForClass:[HJShareMenu class]], nil));
    
    HJShareMenuItem *mail = [[HJShareMenuItem alloc] init];
    mail.menuItemTitle = kHJShareMenuLocalizedStrings(@"Mail");
    mail.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareMail.png"]];
    
    HJShareMenuItem *message = [[HJShareMenuItem alloc] init];
    message.menuItemTitle = kHJShareMenuLocalizedStrings(@"Message");
    message.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareMessage.png"]];
    
    HJShareMenuItem *photos = [[HJShareMenuItem alloc] init];
    photos.menuItemTitle = kHJShareMenuLocalizedStrings(@"Save to Camera Roll");
    photos.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"sharePhotos.png"]];
    
    HJShareMenuItem *safari = [[HJShareMenuItem alloc] init];
    safari.menuItemTitle = kHJShareMenuLocalizedStrings(@"Open in Safari");
    safari.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareSafari.png"]];
    
    HJShareMenuItem *weibo = [[HJShareMenuItem alloc] init];
    weibo.menuItemTitle  = kHJShareMenuLocalizedStrings(@"Sina Weibo");
    weibo.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareWeibo.png"]];
    
    
    HJShareMenuItem *faceBook = [[HJShareMenuItem alloc] init];
    faceBook.menuItemTitle  = kHJShareMenuLocalizedStrings(@"Facebook");
    faceBook.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareFacebook.png"]];
    
    HJShareMenuItem *twitter = [[HJShareMenuItem alloc] init];
    twitter.menuItemTitle  = kHJShareMenuLocalizedStrings(@"Twitter");
    twitter.menuItemImage = [UIImage imageWithContentsOfFile:[kHJShareMenuBundlePath stringByAppendingPathComponent:@"shareTwitter.png"]];
    
    /*custom Menu Item*/
    
    HJShareMenuItem *custom1 = [[HJShareMenuItem alloc] init];
    custom1.menuItemTitle = NSLocalizedStringFromTableInBundle(@"custom1", @"ShareMenu",[NSBundle mainBundle], nil);
    custom1.menuItemImage = [UIImage imageNamed:@"custom1.png"];
    
    HJShareMenuItem *custom2 = [[HJShareMenuItem alloc] init];
    custom2.menuItemTitle = NSLocalizedStringFromTableInBundle(@"custom2", @"ShareMenu",[NSBundle mainBundle], nil);
    custom2.menuItemImage = [UIImage imageNamed:@"custom2.png"];
    
    HJShareMenuItem *custom3 = [[HJShareMenuItem alloc] init];
    custom3.menuItemTitle = NSLocalizedStringFromTableInBundle(@"custom3", @"ShareMenu",[NSBundle mainBundle], nil);
    custom3.menuItemImage = [UIImage imageNamed:@"custom3.png"];
    
    self.menuItems = [NSMutableArray arrayWithObjects:mail,message,photos,safari,weibo,faceBook,twitter,custom1,custom2,custom3, nil];
}


- (IBAction)lessThree:(id)sender {
    
    HJShareMenu *shareMenu = [[HJShareMenu alloc] initWithMenuItems:[self.menuItems subarrayWithRange:NSMakeRange(0, 3)]];
    shareMenu.delegate = self;
    [shareMenu showMenu];
    
    
}

- (IBAction)moreThanThree:(id)sender {
    
    HJShareMenu *shareMenu = [[HJShareMenu alloc] initWithMenuItems:[self.menuItems subarrayWithRange:NSMakeRange(0, 5)]];
    shareMenu.delegate = self;
    [shareMenu showMenu];
}

- (IBAction)moreThanSix:(id)sender {
    
    HJShareMenu *shareMenu = [[HJShareMenu alloc] initWithMenuItems:self.menuItems];
    shareMenu.delegate = self;
    [shareMenu showMenu];
}

#pragma mark - HJShareMenuDelegate
- (void)hj_shareMenu:(HJShareMenu *)shareMenu selectedAtIndex:(NSInteger)index
{
    NSLog(@"选中：%ld",index);
    
}


@end
