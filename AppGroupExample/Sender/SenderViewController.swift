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
        DefaultsStore.set(textField.text, forKey: SHARED_USER_DEFAULTS_KEY)
        DefaultsStore.synchronize()
    }

}

