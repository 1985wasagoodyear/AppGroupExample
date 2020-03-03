//
//  SenderAppDelegate.swift
//  AppGroupExample
//
//  Created by Kevin Yu on 10/19/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

import UIKit

@UIApplicationMain
final class SenderAppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = .initiateFromMain(identifier: "SenderViewController")
        window?.makeKeyAndVisible()
        
        return true
    }

}

