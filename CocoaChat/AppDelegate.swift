//
//  AppDelegate.swift
//  CocoaChat
//
//  Created by Craig Clayton on 11/4/16.
//  Copyright © 2016 Cocoa Academy. All rights reserved.
//

import UIKit

import Firebase


@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate{
    var window: UIWindow?


    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        FIRApp.configure()
        return true
    }
        
}
