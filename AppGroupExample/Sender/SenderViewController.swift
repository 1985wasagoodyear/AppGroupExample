//
//  SenderViewController.swift
//  AppGroupExample
//
//  Created by Kevin Yu on 10/19/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

import UIKit

class SenderViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // when the app becomes inactive
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didLeaveApp),
                                               name: UIApplication.willResignActiveNotification,
                                               object: nil)
    }
    
    @objc
    func didLeaveApp() {
        // save the data
        if let text = textField.text {
            self.saveToFileManager(text)
        }
    }
    
    // MARK: Persistance Manager Handlers
    
    func saveToFileManager(_ text: String) {
        SharedFileManager.save(string: text, fileName: SHARED_FILE_FILENAME)
    }
    
    func saveToUserDefaults(_ text: String) {
        DefaultsStore.set(text, forKey: SHARED_USER_DEFAULTS_KEY)
        DefaultsStore.synchronize()
    }
    

}

