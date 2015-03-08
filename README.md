AppInfo
=======

Get information about your app in Swifty way

## The Idea

Do you remember yourself doing this? Can remember all the keys? How many times have you searched for the right names?

```swift
let text = NSBundle.mainBundle().infoDictionary?["CFBundleVersion"]

// Keys
"CFBundleDisplayName", "CFBundleVersion", "UIRequiredDeviceCapabilities", "UIMainStoryboardFile", ...
```
Wouldn't it be awesome to have Xcode to show them *all*? And be staticly typed!?

Enter **AppInfo**.
 
## Usage

AppInfo provides an static typed API for working with `infoDictionary`.

```swift
let name = AppInfo.CFBundleName 
let build = AppInfo.CFBundleVersion
let version = AppInfo.CFBundleShortVersionString
let devices = AppInfo.UIDeviceFamily

/*
Results:
Name - "DemeApp", String
build - 2, Int
version - "1.0", String
devices - ["armv7"], Array
/*
```

## Benefits

- Static typed keys. No string keys anymore
- Static typed values. Correct key values: Int, String, Array ...

## Installation

### Copied files

The simplest way - copy `AppInfo/Classes/AppInfo.swift` to your project. That's it!

### CocoaPods

```ruby
use_frameworks!
pod 'AppInfo'
```
Then import it to your project:
```swift
import AppInfo
```

Note: This requires CocoaPods 0.36 as well as iOS 8 

## Contribute

Please open an issue with bugs and missing features, functionality or ideas for improvements.   

Also you can contribute by following this guidelines:

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create pull request

## Author

Kostiantyn Koval, [@KostiaKoval](https://twitter.com/KostiaKoval)

## License

AppInfo is available under the MIT license. See the LICENSE file for more info.
