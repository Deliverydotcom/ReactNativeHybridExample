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
        self.title = "React Wrapper Swift"
        self.reactViewWrapper.data = [
            "route": "swift",
            "someFakeId": 12345
        ]
        self.reactViewWrapper.initializeReactView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
    self.reactViewWrapper.data = [@{
    @"title": @"This is the title passed through data",
    @"content": @"This is the content passed through data"
    } mutableCopy];
    
    [self.reactViewWrapper initializeReactView];
    */

}
