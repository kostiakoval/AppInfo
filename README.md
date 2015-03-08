AppInfo
=====
[![Work in progress](https://img.shields.io/badge/status-work%20in%20progress-blue.svg)](https://github.com/kostiakoval/AppInfo)

Get information about your app in Swifty way

### The Idea

Do you remember yourself doing this:  
```objc 
NSString *appVersion = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
```

How many times have you searched correct names for all those InfoKeys?  
```
"CFBundleDisplayName", "CFBundleVersion", "UIRequiredDeviceCapabilities", "UIMainStoryboardFile" 
...
```
Would it Awesome to have the Xcode to show them **All**. And be staticly typed.  
Here it is **AppInfo**!
 
## Usages

AppInfo provides static type API for working with `infoDictionary`.

```swift
let name = AppInfo.CFBundleName 
let build = AppInfo.CFBundleVersion
let version = AppInfo.CFBundleShortVersionString

/*
Results:
Name - "DemeApp" 
build - 2
version - "1.0"
/*
```

**Benefits:**

- Static typed keys. No string keys anymore
- Static typed values. Correct values for the key: Int, String, Array ...


##Contribute

Please open Issue with bugs and missing features, functionality and ideas for improvements.   
Also you can contribute

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create pull request

## Author

Kostiantyn Koval  
[@KostiaKoval](https://twitter.com/KostiaKoval)

## License

AppInfo is available under the MIT license. See the LICENSE file for more info.