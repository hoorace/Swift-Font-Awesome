# Swift-Font-Awesome

[![Twitter](https://img.shields.io/badge/twitter-@hoorace-blue.svg?style=flat)](https://twitter.com/hoorace)
[![eMail](https://img.shields.io/badge/email-longtask@gmail.com-blue.svg?style=flat)](mailto:longtask@gmail.com)

Swift-Font-Awesome is an [Font Awesome](http://fontawesome.io/) implementation which written in Swift.

## Features

- [x] UILable
- [x] UIImage or UIImage with circle
- [x] UIBarButtonItem
- [x] UIButton
- [x] All extension can with FontAwesome and it's own text

## Snapshots
<p align="center"  style="background-color:#cccccc">
  <img width="375" height="667" src="https://github.com/hoorace/Swift-Font-Awesome/blob/master/snapshots/2015-7-18.png"/>
</p>


## Requirements

- iOS 8.0+ / Mac OS X 10.9+
- Xcode 6.1

## Communication

- If you **need help**, mail to: longtask@gmail.com

## Installation

copy "Source" floder files to you porject.

### CocoaPods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects.

CocoaPods 0.36.0 adds supports for Swift and embedded frameworks. You can install it with the following command:

```bash
$ gem install cocoapods
```

To integrate Swift-Font-Awesome into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

pod 'Swift-Font-Awesome', '~> 1.1.1'
```

Then, run the following command:

```bash
$ pod install
```
And, in your porject , don't forget import like this:
```swift
import Swift_Font_Awesome
```


## Usage

### UILable

```swift
let like = UILabel(frame: CGRectMake(150, 70, 100, 25))
like.faTextAlignment = .Left
like.text = " Like"
like.fa = Fa.Heart
```

### UIFont

```swift
let font = UIFont.fa(size: 24)
```

### UIButton

```swift
let button  = UIButton(frame: CGRectMake(50, 220, 120, 30))
......
button.faTextAlignment = .Left
button.fa(Fa.Comment, forState: .Normal)
```
### UIBarButtonItem

```swift
rightButton.fa = Fa.Bars
```

### UIImage

image with circle:
```swift
let image = UIImage(faCircle: Fa.Twitter, font: FaType.X3.font, backgroundColor: .clearColor())
```
image without circle:
```swift
let image = UIImage(fa: Fa.Twitter, font: FaType.X3.font, color: .blueColor(), backgroundColor: .clearColor(), offset: CGPoint(x: 0, y: 8))
```

## FAQ

### When should I use Swift-Font-Awesome?

If you're starting a new project in Swift, and you don't want to search icons from network, you can use Swift-Font-Awesome to instead of icon images.


## License

Alamofire is released under the MIT license. See LICENSE for details.
