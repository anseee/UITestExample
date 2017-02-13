//
//  ViewController.swift
//  UITestExample
//
//  Created by Mac on 2017. 2. 13..
//  Copyright © 2017년 partner. All rights reserved.
//

import UIKit
import OHHTTPStubs

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        // Swift
        stub(condition: isHost("http://127.0.0.1:5000/todo/api/v1.0/tasks")) { request in
            // Stub it with our "wsresponse.json" stub file
            return OHHTTPStubsResponse(
                fileAtPath: OHPathForFile("wsresponse.json", type(of: self))!,
                statusCode: 200,
                headers: ["Content-Type":"application/json"]
            )
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

