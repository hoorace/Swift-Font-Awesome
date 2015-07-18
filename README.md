# Swift-Font-Awesome

[![Git](https://img.shields.io/badge/GitHub-hoorace-blue.svg?style=flat)](https://github.com/hoorace)
[![Twitter](https://img.shields.io/badge/twitter-@hoorace-blue.svg?style=flat)](https://twitter.com/hoorace)
[![Twitter](https://img.shields.io/badge/facebook-@hoorace-blue.svg?style=flat)](https://facebook.com/hoorace)
[![eMail](https://img.shields.io/badge/email-longtask@gmail.com-blue.svg?style=flat)](mailto:longtask@gmail.com)

Swift-Font-Awesome is an [Font Awesome](http://fontawesome.io/) implementation which written in Swift.

## Features

- [x] UILable
- [x] UIImage or UIImage with circle
- [x] UIBarButtonItem
- [x] UIButton
- [x] All extension can with FontAwesome and it's own text

## Snapshots
<p align="center">
  <img src="https://github.com/hoorace/Swift-Font-Awesome/blob/master/snapshots/2015-7-18.png"/>
</p>


## Requirements

- iOS 8.0+ / Mac OS X 10.9+
- Xcode 6.1

## Communication

- If you **need help**, mail to: longtask@gmail.com

## Installation

copy "Source" floder files to you porject.



## Usage

### UILable

```swift
let like = UILabel(frame: CGRectMake(150, 70, 100, 25))
like.faTextAlignment = .Left
like.text = " Like"
like.fa = Fa.Heart
```

### UIButton

```swift
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
