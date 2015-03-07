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


private func array<T>(object: AnyObject?) -> Array<T>? {
  return object as? Array
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

  static var CFBundleExecutable: String? {
    return bundleInfo["CFBundleExecutable"] >> string
  }
  static var LSRequiresIPhoneOS: Int? {
    return bundleInfo["LSRequiresIPhoneOS"] >> int
  }

  static var CFBundleName: String? {
    return bundleInfo["CFBundleName"] >> string
  }

  static var UILaunchStoryboardName: String? {
    return bundleInfo["UILaunchStoryboardName"] >> string
  }

  static var CFBundleSupportedPlatforms: Array<String>? {
    return bundleInfo["CFBundleSupportedPlatforms"] >> array
  }
  static var CFBundlePackageType: String? {
    return bundleInfo["CFBundlePackageType"] >> string
  }
  static var CFBundleNumericVersion: Int? {
    return bundleInfo["CFBundleNumericVersion"] >> int
  }

  static var CFBundleInfoDictionaryVersion: String? {
    return bundleInfo["CFBundleInfoDictionaryVersion"] >> string
  }

  static var UIRequiredDeviceCapabilities: Array<String>? {
    return bundleInfo["UIRequiredDeviceCapabilities"] >> array
  }

  static var UISupportedInterfaceOrientations: Array<String>? {
  return bundleInfo["UISupportedInterfaceOrientations"] >> array
  }

  static var CFBundleInfoPlistURL: String? {
  return bundleInfo["CFBundleInfoPlistURL"] >> string
  }

  static var CFBundleDevelopmentRegion: String? {
    return bundleInfo["CFBundleDevelopmentRegion"] >> string
  }
  static var DTSDKName: String? {
  return bundleInfo["DTSDKName"] >> string
  }
  static var UIDeviceFamily: Array<Int>? {
  return bundleInfo["UIDeviceFamily"] >> array
  }
  static var CFBundleShortVersionString: String? {
    return bundleInfo["CFBundleShortVersionString"] >> string
  }

  /*static var <#name#>: <#Type#> {
    return bundleInfo[<#name#>] >>
  } */

  public static func info() -> Dictionary<NSObject, AnyObject>? {
    return bundleInfo
  }
}
