//
//  AppDelegate.swift
//  DemoApp
//
//  Created by Konstantin Koval on 06/03/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import UIKit
import AppInfo

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

    var a: NSDictionary = AppInfo.info()! as NSDictionary
    let name = AppInfo.DTPlatformName

    println(a)
    debugPrintln(a)

    println(a.allKeys)
    println(a.allValues)

   // println(@"%s \n%@", __FUNCTION__, [[[NSBundle mainBundle] infoDictionary] allKeys]);

    return true
  }
}

