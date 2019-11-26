//
//  UIKit+Utility.swift
//  AppGroupExampleSender
//
//  Created by K Y on 11/26/19.
//  Copyright © 2019 Kevin Yu. All rights reserved.
//

import UIKit


extension UIView {
    func roundify() {
        let l = layer
        l.cornerRadius = 16.0
        l.masksToBounds = true
    }
}
