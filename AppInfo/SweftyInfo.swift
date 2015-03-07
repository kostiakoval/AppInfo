//
//  File.swift
//  AppInformer
//
//  Created by Konstantin Koval on 06/03/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

class DictionaryProxy<Key: Hashable, Value> {
  private let dictionary: Dictionary<Key, Value>
  private let key: Key

  init(_ dictionary: Dictionary<Key, Value>, _ key: Key) {
    self.dictionary = dictionary
    self.key = key
  }

  // MARK: Getters

  var string: String? {
    return dictionary[key] as? String
  }
}

public extension Dictionary {

  /// Returns getter proxy for `key`
  internal subscript(key: Key) -> DictionaryProxy<Key, Value> {
    return DictionaryProxy(self, key)
  }

  internal subscript(key: String) -> MyObj {
    return MyObj()
  }
  internal func callMe() {}

}

struct MyObj {

}

public extension NSUserDefaults {
  class A {

  }
}

func to_string(object: AnyObject?) -> String? {
  return object as? String
}


public struct SweftyInfo {

  static let bundleInfo = NSBundle.mainBundle().infoDictionary as! Dictionary<String, AnyObject>

  static var CFBundleIdentifier: String {
    return bundleInfo["CFBundleIdentifier"] as! String
  }

  static var DTPlatformName: String? {
   return to_string(bundleInfo["DTPlatformName"])
  }

 /* static var UIMainStoryboardFile: String {
    return bundle.infoDictionary[<#name#>]
  }
  static var CFBundleVersion: Int {
  return bundle.infoDictionary[<#name#>]
  }

  static var CFBundleSignature: <#Type#> {
  return bundle.infoDictionary[<#name#>]
  }

  static var CFBundleIdentifier: <#Type#> {
  return bundle.infoDictionary[<#name#>]

  }

  static var CFBundleExecutable: String {
  return bundle.infoDictionary["CFBundleExecutable"]
  }
  static var LSRequiresIPhoneOS: <#Type#> {
  return bundle.infoDictionary[<#name#>]
  }
  static var CFBundleName: <#Type#> {
  return bundle.infoDictionary[<#name#>]
  }
  static var UILaunchStoryboardName: <#Type#> {
  return bundle.infoDictionary[<#name#>]
  }
  static var CFBundleSupportedPlatforms: <#Type#> {
  return bundle.infoDictionary[<#name#>]
  }
  static var CFBundlePackageType: <#Type#> {
  return bundle.infoDictionary[<#name#>]
  }
  static var CFBundleNumericVersion: <#Type#> {
  return bundle.infoDictionary[<#name#>]
  }
  static var CFBundleInfoDictionaryVersion: String {
  return bundleInfo["CFBundleInfoDictionaryVersion"] as! String
  }
  static var UIRequiredDeviceCapabilities: <#Type#> {
  return bundle.infoDictionary["UIRequiredDeviceCapabilities"]


  static var UISupportedInterfaceOrientations: <#Type#> {
  return bundle.infoDictionary["UISupportedInterfaceOrientations"]
  }

  static var CFBundleInfoPlistURL: <#Type#> {
  return bundle.infoDictionary["CFBundleInfoPlistURL"]
  }

  static var CFBundleDevelopmentRegion: String {
  return bundle.infoDictionary["CFBundleDevelopmentRegion"]
  }
  static var DTSDKName: <#Type#> {
  return bundle.infoDictionary["DTSDKName"]
  }
  static var UIDeviceFamily: <#Type#> {
  return bundle.infoDictionary["UIDeviceFamily"]
  }
  static var <#name#>: <#Type#> {
  return bundle.infoDictionary[<#name#>]
  }
  static var <#name#>: <#Type#> {
  return bundle.infoDictionary[<#name#>]
  } */

  public static func info() -> Dictionary<NSObject, AnyObject>? {
    return bundleInfo
  }
}
