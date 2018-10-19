//
//  Constants.swift
//  AppGroupExampleSender
//
//  Created by Kevin Yu on 10/19/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

// constants, defines the shared store for persistance
// this file contains all setup for UserDefaults

import Foundation

let SHARED_USER_DEFAULTS_GROUP = "group.KevinYu.AppGroupExample"
let SHARED_USER_DEFAULTS_KEY = "appGroupKey"    // example; could use any key

let DefaultsStore = UserDefaults(suiteName: SHARED_USER_DEFAULTS_GROUP)!
