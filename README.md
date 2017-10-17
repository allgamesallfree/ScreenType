# ScreenType

![ScreenType](/ScreenType.png "ScreenType")

[![Version](https://img.shields.io/cocoapods/v/ScreenType.svg?style=flat)](http://cocoapods.org/pods/ScreenType)
[![License](https://img.shields.io/cocoapods/l/ScreenType.svg?style=flat)](http://cocoapods.org/pods/ScreenType)
[![Platform](https://img.shields.io/cocoapods/p/ScreenType.svg?style=flat)](http://cocoapods.org/pods/ScreenType)

Easily distinguish between iPhone models in Objective-C and Swift.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Swift 4.0+

Xcode 9.0+

iOS 9.0+

## Installation

ScreenType is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ScreenType'
```

### Manual Installation

You can also install ScreenType manually by importing [ScreenType.swift](https://github.com/allgamesallfree/ScreenType/blob/master/ScreenType/Classes/ScreenType.swift) into your project

## Usage

### Swift

```Swift
// Check for a specific model
if UIScreen.current == .iPhoneX {
    print("Screen type is iPhone X")
}

// Check for multiple models
if UIScreen.current == .iPhone6 || UIScreen.current == .iPhone6Plus {
    print("Screen type is either iPhone 6 or 6 Plus")
}

// Find all models smaller than a certain screen size
if UIScreen.current.rawValue < ScreenType.iPhone6.rawValue {
    print("Screen is smaller than an iPhone 6")
}

// Find all models larger than or equal to a certain screen size
if UIScreen.current.rawValue >= ScreenType.iPad10_5.rawValue {
    print("Screen type is either iPad 10.5 or iPad 12.9")
}

```

### Objective-C

```Objective-C
// Check for a specific model
if ([UIScreen current] == ScreenTypeIPhoneX) {
    NSLog(@"Screen Type is iPhone X");
}

// Find all models larger than a certain screen size
if ([UIScreen current] > ScreenTypeIPhone5) {
    NSLog(@"Screen is larger than an iPhone 5");
}
```

## Author

Max Stein | [maxste.in](http://maxste.in) | [Twitter](https://twitter.com/maxsteinapps)

## License

ScreenType is available under the MIT license. See the LICENSE file for more info.
