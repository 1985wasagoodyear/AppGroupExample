//
//  AppGroupSharedConstants.swift
//  AppGroupExampleSender
//
//  Created by Kevin Yu on 10/19/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

// constants, defines the shared store for persistance
// this file contains all setup for UserDefaults

import Foundation

public enum AppGroupSharedConstants {
    public static let GROUP = "group.KevinYu.AppGroupExample"
    public static let KEY = "appGroupKey"
    public static let DEFAULTS_STORE = UserDefaults(suiteName: AppGroupSharedConstants.GROUP)!
}
