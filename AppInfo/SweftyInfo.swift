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
  private let bundleInfo = NSBundle.mainBundle().infoDictionary as! Dictionary<String, AnyObject>

  public var CFBundleIdentifier: String? {
    return bundleInfo["CFBundleIdentifier"] >> string
  }

  public var DTPlatformName: String? {
    return bundleInfo["DTPlatformName"] >> string
  }

  public var UIMainStoryboardFile: String? {
    return bundleInfo["UIMainStoryboardFile"] >> string
  }

  public var CFBundleVersion: Int? {
    return bundleInfo["CFBundleVersion"] >> int
  }

  public var CFBundleSignature: String? {
    return bundleInfo["CFBundleSignature"] >> string
  }

  public var CFBundleExecutable: String? {
    return bundleInfo["CFBundleExecutable"] >> string
  }

  public var LSRequiresIPhoneOS: Int? {
    return bundleInfo["LSRequiresIPhoneOS"] >> int
  }

  public var CFBundleName: String? {
    return bundleInfo["CFBundleName"] >> string
  }

  public var UILaunchStoryboardName: String? {
    return bundleInfo["UILaunchStoryboardName"] >> string
  }

  public var CFBundleSupportedPlatforms: Array<String>? {
    return bundleInfo["CFBundleSupportedPlatforms"] >> array
  }

  public var CFBundlePackageType: String? {
    return bundleInfo["CFBundlePackageType"] >> string
  }

  public var CFBundleNumericVersion: Int? {
    return bundleInfo["CFBundleNumericVersion"] >> int
  }

  public var CFBundleInfoDictionaryVersion: String? {
    return bundleInfo["CFBundleInfoDictionaryVersion"] >> string
  }

  public var UIRequiredDeviceCapabilities: Array<String>? {
    return bundleInfo["UIRequiredDeviceCapabilities"] >> array
  }

  public var UISupportedInterfaceOrientations: Array<String>? {
    return bundleInfo["UISupportedInterfaceOrientations"] >> array
  }

  public var CFBundleInfoPlistURL: String? {
    return bundleInfo["CFBundleInfoPlistURL"] >> string
  }

  public var CFBundleDevelopmentRegion: String? {
    return bundleInfo["CFBundleDevelopmentRegion"] >> string
  }

  public var DTSDKName: String? {
    return bundleInfo["DTSDKName"] >> string
  }

  public var UIDeviceFamily: Array<Int>? {
    return bundleInfo["UIDeviceFamily"] >> array
  }

  public var CFBundleShortVersionString: String? {
    return bundleInfo["CFBundleShortVersionString"] >> string
  }

  /* var <#name#>: <#Type#> {
  return bundleInfo[<#name#>] >>
  } */

  public func info() -> Dictionary<NSObject, AnyObject>? {
    return bundleInfo
  }
}

//MARK: - Runtime Info

public extension AppInfo {

  public var names: Array<String> {
    return RuntimeHelp.names(AppInfo)
  }

  public var items: Array<(key: String, value:Any)> {
    return RuntimeHelp.items(AppInfo)
  }
}

struct RuntimeHelp {

   func names <T>(instance: T) -> Array<String> {

    var names = [String]()
    let mirror = reflect(instance)

    for i in 0 ..< mirror.count {
      let (childKey, _ ) = mirror[i]
      names.append(childKey)
    }

    return names
  }

   func items <T>(instance: T) -> Array<(key: String, value:Any)> {

    var items = Array<(key: String, value:Any)>()
    let mirror = reflect(instance)

    for i in 0 ..< mirror.count {
      let (childKey, type) = mirror[i]
      items.append((key:childKey, value:type.value))
    }

    return items
  }
}
