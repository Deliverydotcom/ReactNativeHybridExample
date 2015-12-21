//
//  ReactNativeSwiftViewController.swift
//  ReactNativeExample
//
//  Created by Jesse Sessler on 12/17/15.
//  Copyright © 2015 Delivery. All rights reserved.
//

import UIKit

class ReactNativeSwiftViewController: UIViewController {
    
    @IBOutlet weak var reactViewWrapper: ReactNativeViewSwift!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "React Wrapper (Swift)"
        self.reactViewWrapper.data = [
            "content": "Welcome to React Native"
        ]
        self.reactViewWrapper.initializeReactView()
    }

}
