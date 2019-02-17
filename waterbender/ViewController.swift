//
//  ViewController.swift
//  waterbender
//
//  Created by Chris Chau on 2019-02-16.
//  Copyright © 2019 bigheartsmallbrain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    /* These are our buttons ---------------- */
    
    @IBAction func tapped_Monthly(_ sender: Any) {
        print("monthly")
    }
    
    @IBAction func tapped_Weekly(_ sender: Any) {
        print("weekly")
    }
    
    
    @IBAction func tapped_Daily(_ sender: Any) {
        print("daily")
    }
    /* ------------------------------------- */

    /* DAILY */
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

