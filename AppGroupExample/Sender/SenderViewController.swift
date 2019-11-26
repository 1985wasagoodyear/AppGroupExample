//
//  SenderViewController.swift
//  AppGroupExample
//
//  Created by Kevin Yu on 10/19/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

import UIKit
import AppGroupExampleCommon

final class SenderViewController: UIViewController {
    
    // MARK: - Storyboard Outlets
    @IBOutlet var textField: UITextField! {
        didSet {
            textField.roundify()
        }
    }
    
    // MARK: - Properties
    
    let fileManager = SharedFileManager()
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // when the app becomes inactive,
        // save any existing data
        let notiCenter = NotificationCenter.default
        notiCenter.addObserver(self,
                               selector: #selector(didLeaveApp),
                               name: UIApplication.willResignActiveNotification,
                               object: nil)
    }
    
    @objc
    func didLeaveApp() {
        if let text = textField.text {
            self.saveToFileManager(text)
        }
    }
    
    // MARK: Persistance Manager Handlers
    
    func saveToFileManager(_ text: String) {
        fileManager.save(string: text, fileName: SHARED_FILE_FILENAME)
    }
    
    func saveToUserDefaults(_ text: String) {
        let store = AppGroupSharedConstants.DEFAULTS_STORE
        store.set(text, forKey: AppGroupSharedConstants.KEY)
        store.synchronize()
    }
    
}
