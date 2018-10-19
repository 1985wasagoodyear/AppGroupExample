//
//  SharedFileManager.swift
//  AppGroupExampleSender
//
//  Created by Kevin Yu on 10/19/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

// Shared Store Coordinator for files

import Foundation

let SHARED_FILE_FILENAME = "sharedFileFileName"

class SharedFileManager {
    static private let groupURL = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: SHARED_USER_DEFAULTS_GROUP)!
    
    class func save(string: String, fileName: String? = nil) {
        let fileURL = groupURL.appendingPathComponent(fileName ?? string)
        
        do {
            try string.write(to: fileURL, atomically: false, encoding: .utf8)
        }
        catch {
            print("Could not save to this file!")
            return
        }
        
    }
    
    class func loadFile(_ fileName: String) -> String? {
        let fileURL = groupURL.appendingPathComponent(fileName)
        do {
            return try String(contentsOf: fileURL, encoding: .utf8)
        }
        catch {
            print("Could not load from this file!")
            return nil
        }
    }
    
}
