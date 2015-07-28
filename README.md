# HJShareMenu

![iOS7 and later](images/ShareMenu.gif)


## Installation

HJShareMenu is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "HJShareMenu"
```
 
## Usage

To run the example project, clone the repo, and run `pod install` from the Example directory first.

In your Project ,import HJShareMenu and implement HJShareMenuDelegate.


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


## License

HJShareMenu is available under the MIT license. See the LICENSE file for more info.
