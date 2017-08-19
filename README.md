# YWColorPicker
[![CI Status](https://travis-ci.org/nsnull0/YWColorPicker.svg?branch=master)](https://travis-ci.org/nsnull0/YWColorPicker)
[![Version](https://img.shields.io/cocoapods/v/YWColorPicker.svg?style=flat)](https://cocoapods.org/pods/YWColorPicker)
[![License](https://img.shields.io/cocoapods/l/YWColorPicker.svg?style=flat)](https://cocoapods.org/pods/YWColorPicker)
[![Platform](https://img.shields.io/cocoapods/p/YWColorPicker.svg?style=flat)](https://cocoapods.org/pods/YWColorPicker)

Simple Color Picker


## Availability
#### ⚠️ **This Library only Available to Swift > 3.0** ⚠️



## Screenshot
<img src="https://raw.github.com/nsnull0/YWColorPicker/master/ss_colorpicker.png" alt="iPhone6s" width="414" />

### CocoaPods Local
[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command:

```bash
$ gem install cocoapods
```

```ruby
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
pod 'YWColorPicker'
end
```

Then, run the following command:

```bash
$ pod install
```

## Property Setup
```swift
showColorPicker()
showColorPicker(_initial color:UIColor)
```

## Delegation
```swift
func finishSelection(_ color:UIColor)
```

## Example
```swift
var pickerColor:YWColorPicker?

pickerColor = YWColorPicker(parent: self)
pickerColor?.delegate = self

```


## Support
- Updated occasionally for more functionality
- Message me through here http://yoseph.ws for more fast responds


## Credits
- Creator Yoseph Wijaya (Swift 3.0)
- Reference from ios-color-picker (Objective-C)
