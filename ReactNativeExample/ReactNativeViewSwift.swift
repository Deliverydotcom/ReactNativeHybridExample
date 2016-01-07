//
//  ReactNativeViewSwift.swift
//  ReactNativeExample
//
//  Created by Jesse Sessler on 12/17/15.
//  Copyright © 2015 Delivery. All rights reserved.
//

import UIKit

class ReactNativeViewSwift: UIView {
    
    // set any data you want to pass to react in this dictionary
    var data: [String: AnyObject]?

    func initializeReactView() {
        
        // Configure and set and data to be passed to react
        // ================================================
        
        let REACT_DEV_MODE = false
        
        if self.data == nil {
            self.data = [String: AnyObject]()
        }
        
        // this is a good place to pass configuration variables
        self.data!["DEV_MODE"]            = REACT_DEV_MODE
        self.data!["API_KEY"]             = "ABCDEF123456"
        self.data!["AUTHORIZATION_TOKEN"] = "a8b6de25b5bf481824c9c4173c56231a"
        
        // Set location of the main js bundle
        
        var jsCodeLocation = NSURL(string: "http://localhost:8081/index.ios.bundle?platform=ios&dev=true")
        
        if !REACT_DEV_MODE {
            jsCodeLocation = NSBundle.mainBundle().URLForResource("main", withExtension: "jsbundle")
        }
        
        // Instantiate our root view, add as a subview, set constraints
        // ============================================================
        
        let rootView = RCTRootView(bundleURL: jsCodeLocation,
            moduleName: "ReactNativeExample",
            initialProperties: self.data!,
            launchOptions: nil)
        rootView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(rootView)
        
        let views = ["rootView": rootView]
        var constraints = NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[rootView]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views)
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[rootView]-0-|", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views)
        
        self.addConstraints(constraints)
        self.layoutIfNeeded()
        
    }

}