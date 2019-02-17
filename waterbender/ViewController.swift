//
//  ViewController.swift
//  waterbender
//
//  Created by Chris Chau on 2019-02-16.
//  Copyright © 2019 bigheartsmallbrain. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sea: UIImageView!
    @IBOutlet weak var monthlyBtn: UIButton!
    @IBOutlet weak var monthlyLbl: UILabel!
    @IBOutlet weak var weaklyBtn: UIButton!
    @IBOutlet weak var weaklyLbl: UILabel!
    @IBOutlet weak var dailyBtn: UIButton!
    @IBOutlet weak var dailyLbl: UILabel!
    @IBOutlet weak var monthlyHolder: UIView!
    @IBOutlet weak var monthlyNav: UINavigationBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func actionBtnPressed(_ sender: Any) {
        monthlyBtn.isHidden = true
        monthlyLbl.isHidden = true
        weaklyBtn.isHidden = true
        weaklyLbl.isHidden = true
        dailyBtn.isHidden = true
        dailyLbl.isHidden = true
        sea.isHidden = false
        
        
        
    }
    
/*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 */

}

