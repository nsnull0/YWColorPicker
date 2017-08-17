# YWColorPicker

Simple Color Picker


## Availability
#### ⚠️ **This Library only Available to Swift > 3.0** ⚠️

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


## Credits
- Creator Yoseph Wijaya (Swift 3.0)
- Reference from ios-color-picker (Objective-C)
