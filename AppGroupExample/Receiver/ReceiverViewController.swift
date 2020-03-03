//
//  ReceiverViewController.swift
//  AppGroupExample
//
//  Created by Kevin Yu on 10/19/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

import UIKit
import AppGroupExampleCommon

class ReceiverViewController: UIViewController {

    // MARK: - Storyboard Outlets
    
    @IBOutlet var textLabel: UILabel! {
        didSet {
            textLabel.roundify()
        }
    }
    
    // MARK: - Properties
    
    let fileManager = SharedFileManager()
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let notiCenter = NotificationCenter.default
        notiCenter.addObserver(self,
                               selector: #selector(updateLabel),
                               name: UIApplication.didBecomeActiveNotification,
                               object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateLabel()
    }
    
    // MARK: Persistance Manager Handlers
    
    private func loadFromUserDefaults() -> String? {
        let store = AppGroupSharedConstants.DEFAULTS_STORE
        let key = AppGroupSharedConstants.KEY
        return store.string(forKey: key)
    }
    
    private func loadFromFileManager() -> String? {
        // TODO - debug this?
        return fileManager.loadString(fileName: SHARED_FILE_FILENAME)
    }
    
    // get the saved value from the common store
    @objc func updateLabel() {
        textLabel.text = loadFromFileManager() ?? "Data not found"
    }
    
}
