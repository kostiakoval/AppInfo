//
//  AppInfoItemsViewController.swift
//  DemoApp
//
//  Created by Konstantin Koval on 07/03/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import UIKit
import AppInfo

struct AppInfoItem {
  let name: String
  let value: String?
}

class AppInfoItemsViewController: UITableViewController {

  var items: Array<AppInfoItem> = []

  override func viewDidLoad() {
    super.viewDidLoad()
    loadItems()
  }

  override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return items.count
  }

  override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

    let cell = tableView.dequeueReusableCellWithIdentifier("AppInfoItemCell", forIndexPath: indexPath) as!  UITableViewCell

    let item = items[indexPath.row]
    cell.textLabel?.text = item.name
    cell.detailTextLabel?.text = item.value

    return cell
  }

  private func loadItems() {

    items.append(AppInfoItem(name: "CFBundleIdentifier", value:AppInfo.CFBundleIdentifier))
    items.append(AppInfoItem(name: "DTPlatformName", value: AppInfo.DTPlatformName))

    items.append(AppInfoItem(name: "UIMainStoryboardFile", value:AppInfo.UIMainStoryboardFile))
    items.append(AppInfoItem(name: "CFBundleVersion", value:"\(AppInfo.CFBundleVersion!)"))
    items.append(AppInfoItem(name: "CFBundleSignature", value:AppInfo.CFBundleSignature))
    items.append(AppInfoItem(name: "CFBundleExecutable", value:AppInfo.CFBundleExecutable))
//    items.append(AppInfoItem(name: "LSRequiresIPhoneOS", value:AppInfo.LSRequiresIPhoneOS))
    items.append(AppInfoItem(name: "CFBundleName", value:AppInfo.CFBundleName))
    items.append(AppInfoItem(name: "UILaunchStoryboardName", value:AppInfo.UILaunchStoryboardName))
  //  items.append(AppInfoItem(name: "CFBundleSupportedPlatforms", value:AppInfo.CFBundleSupportedPlatforms))
    items.append(AppInfoItem(name: "CFBundlePackageType", value:AppInfo.CFBundlePackageType))
    //items.append(AppInfoItem(name: "CFBundleNumericVersion", value:AppInfo.CFBundleNumericVersion))
    items.append(AppInfoItem(name: "CFBundleInfoDictionaryVersion", value:AppInfo.CFBundleInfoDictionaryVersion))
    //items.append(AppInfoItem(name: "UIRequiredDeviceCapabilities", value:AppInfo.UIRequiredDeviceCapabilities))
    //items.append(AppInfoItem(name: "UISupportedInterfaceOrientations", value:AppInfo.UISupportedInterfaceOrientations))
    items.append(AppInfoItem(name: "CFBundleInfoPlistURL", value:AppInfo.CFBundleInfoPlistURL))
    items.append(AppInfoItem(name: "CFBundleDevelopmentRegion", value:AppInfo.CFBundleDevelopmentRegion))
    items.append(AppInfoItem(name: "DTSDKName", value:AppInfo.DTSDKName))
    //items.append(AppInfoItem(name: "UIDeviceFamily", value:AppInfo.UIDeviceFamily))
    items.append(AppInfoItem(name: "CFBundleShortVersionString", value:AppInfo.CFBundleShortVersionString))
  }


}
