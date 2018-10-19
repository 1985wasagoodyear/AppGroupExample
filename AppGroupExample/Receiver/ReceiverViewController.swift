//
//  ReceiverViewController.swift
//  AppGroupExample
//
//  Created by Kevin Yu on 10/19/18.
//  Copyright © 2018 Kevin Yu. All rights reserved.
//

import UIKit

class ReceiverViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        // get the saved value from the common store
        if let text = DefaultsStore.string(forKey: SHARED_USER_DEFAULTS_KEY) {
            self.textLabel.text = text
        } else {
            self.textLabel.text = ""
        }
    }
}
