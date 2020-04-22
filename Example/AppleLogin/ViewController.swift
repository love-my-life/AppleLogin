//
//  ViewController.swift
//  AppleLogin
//
//  Created by 13298303056@163.com on 04/15/2020.
//  Copyright (c) 2020 13298303056@163.com. All rights reserved.
//

import UIKit
import AppleLogin

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if #available(iOS 13.0, *) {
            let v = AppleLoginView.init(frame: CGRect.init(x: 20, y: 100, width: 50, height: 50), cornerRadius: 25)
            v.showResultBlock = { (a,b,c) in
                print(a)
                print(b?.familyName)
                print(b?.givenName)
                print(c)
            }
            self.view.addSubview(v)
        } else {
            // Fallback on earlier versions
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

