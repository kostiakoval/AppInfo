//
//  File.swift
//  AppInformer
//
//  Created by Konstantin Koval on 06/03/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation




infix operator >> { associativity right precedence 90 }
func >> <T, R>(x: T, f: (T) -> R) -> R {
  return f(x)
}

private func string(object: AnyObject?) -> String? {
  return object as? String
}

private func int(object: AnyObject?) -> Int? {
  return object as? Int
}


public struct AppInfo {
  static let bundleInfo = NSBundle.mainBundle().infoDictionary as! Dictionary<String, AnyObject>

  static var CFBundleIdentifier: String? {
    return bundleInfo["CFBundleIdentifier"] >> string
  }

  public static var DTPlatformName: String? {
   return bundleInfo["DTPlatformName"] >> string
  }

  static var UIMainStoryboardFile: String? {
    return bundleInfo["UIMainStoryboardFile"] >> string
  }
  static var CFBundleVersion: Int? {
    return bundleInfo["CFBundleVersion"] >> int
  }

  static var CFBundleSignature: String? {
    return bundleInfo["CFBundleSignature"] >> string
  }

//  static var CFBundleIdentifier: String? {
//    return bundleInfo["CFBundleIdentifier"] >> string
//  }

 /* static var CFBundleExecutable: String? {
  return bundleInfo["CFBundleExecutable"]
  }
  static var LSRequiresIPhoneOS: <#Type#> {
  return bundleInfo[<#name#>]
  }
  static var CFBundleName: <#Type#> {
  return bundleInfo[<#name#>]
  }
  static var UILaunchStoryboardName: <#Type#> {
  return bundleInfo[<#name#>]
  }
  static var CFBundleSupportedPlatforms: <#Type#> {
  return bundleInfo[<#name#>]
  }
  static var CFBundlePackageType: <#Type#> {
  return bundleInfo[<#name#>]
  }
  static var CFBundleNumericVersion: <#Type#> {
  return bundleInfo[<#name#>]
  }
  static var CFBundleInfoDictionaryVersion: String? {
  return bundleInfo["CFBundleInfoDictionaryVersion"] >> string
  }
  static var UIRequiredDeviceCapabilities: Array<String>? {
    return bundle.infoDictionary["UIRequiredDeviceCapabilities"]
  }

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
