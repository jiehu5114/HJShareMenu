//
//  HJShareMenuConstants.h
//  Pods
//
//  Created by hujie on 15/7/27.
//
//

#ifndef Pods_HJShareMenuConstants_h
#define Pods_HJShareMenuConstants_h



#define kHJShareMenuBundlePath  \
([[[NSBundle bundleForClass:[HJShareMenu class]] bundlePath] stringByAppendingPathComponent:@"HJShareMenu.bundle"])


#define kHJShareMenuBundle  \
([NSBundle bundleWithPath:[[[NSBundle bundleForClass:[HJShareMenu class]] bundlePath] stringByAppendingPathComponent:@"HJShareMenu.bundle"]])

#define kHJShareMenuLocalizedStrings(key)  \
(NSLocalizedStringFromTableInBundle(key, @"HJShareMenu", kHJShareMenuBundle, nil))


#endif
