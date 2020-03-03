//
//  SharedFileManager.swift
//  AppGroupExampleSender
//
//  Created by Kevin Yu on 10/19/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

// Shared Store Coordinator for files

import Foundation

public final class SharedFileManager {
    
    let fileManager: FileManager
    
    // define the app group location, needs app group name
    let groupURL: URL
    
    public init(fileManager: FileManager = FileManager.default) {
        self.fileManager = fileManager
        groupURL = fileManager.containerURL(forSecurityApplicationGroupIdentifier: AppGroupSharedConstants.GROUP)!
    }
    
    // MARK: - Data Access Methods
    
    public func save(string: String, fileName: String) {
        let fileURL = groupURL.appendingPathComponent(fileName)
        do {
            try string.write(to: fileURL, atomically: false, encoding: .utf8)
        }
        catch {
            print("Could not save to this file!")
        }
    }
    
    public func loadString(fileName: String) -> String? {
        let fileURL = groupURL.appendingPathComponent(fileName)
        var returnString: String? = nil
        do {
            returnString = try String(contentsOf: fileURL, encoding: .utf8)
        }
        catch {
            print("Could not load from this file!")
        }
        return returnString
    }
    
}
