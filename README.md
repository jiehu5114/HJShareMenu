# HJShareMenu

![iOS7 and later](images/ShareMenu.gif)


## Installation

[CocoaPods](http://cocoapods.org) is the recommended way of installation, as this avoids including any binary files into your project.

### CocoaPods (recommended)

HJShareMenu is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your [Podfile](http://cocoapods.org/#get_started) and run `pod install`.

```ruby
pod "HJShareMenu"
```

### Manually

Clone(`git clone git@github.com:jiehu5114/HJShareMenu.git`) or  Download [HJShareMenu](https://github.com/jiehu5114/HJShareMenu/archive/master.zip), then drag `HJShareMenu` subdirectory to your Project.


## Usage

In your Project,add `#import <HJShareMenu/HJShareMenu.h>` statement and implement HJShareMenuDelegate. As shown below:

```Objc
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


HJShareMenu *shareMenu = [[HJShareMenu alloc] initWithMenuItems:[NSMutableArray arrayWithObjects:mail,message,photos,safari,nil]];
shareMenu.delegate = self;
[shareMenu showMenu];

```

## Requirements

* Deployment Target iOS7.0+
* ARC
* AutoLayout


## Contribute

Please post any issues and ideas in the GitHub issue tracker and feel free to submit pull request with fixes and improvements. Keep in mind; a good pull request is small, well explained and should benifit most of the users.


## License

HJShareMenu is available under the MIT license. See the LICENSE file for more info.
