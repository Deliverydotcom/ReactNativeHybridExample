//
//  ReactNativeViewSwift.swift
//  ReactNativeExample
//
//  Created by Jesse Sessler on 12/17/15.
//  Copyright © 2015 Delivery. All rights reserved.
//

import UIKit

class ReactNativeViewSwift: UIView {
    
    var data: [String: AnyObject]?

    func initializeReactView() {
        
        // Configure and set and data to be passed to react
        // ================================================
        
        let REACT_DEV_MODE = true
        
        if self.data == nil {
            self.data = [String: AnyObject]()
        }
        
        // this is a good place to pass configuration variables
        self.data!["DEV_MODE"] = REACT_DEV_MODE
        self.data!["API_KEY"]  = "ABCDEF123456"
        
        // Set location of the main js bundle
        
        var jsCodeLocation = NSURL(string: "http://localhost:8081/index.ios.bundle?platform=ios&dev=true")
        if !REACT_DEV_MODE {
            
            // When not using code push
            jsCodeLocation = NSBundle.mainBundle().URLForResource("main", withExtension: "jsbundle")
            
            // When using code push
            // jsCodeLocation = CodePush.bundleURL;
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