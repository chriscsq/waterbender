//
//  ViewController.swift
//  waterbender
//
//  Created by Chris Chau on 2019-02-16.
//  Copyright © 2019 bigheartsmallbrain. All rights reserved.
//

import UIKit
import Charts

class ViewController: UIViewController {
    @IBOutlet weak var sea: UIImageView!
    @IBOutlet weak var monthlyBtn: UIButton!
    @IBOutlet weak var monthlyLbl: UILabel!
    @IBOutlet weak var weaklyBtn: UIButton!
    @IBOutlet weak var weaklyLbl: UILabel!
    @IBOutlet weak var dailyBtn: UIButton!
    @IBOutlet weak var dailyLbl: UILabel!
    @IBOutlet weak var monthlyHolder: UIView!
    @IBOutlet weak var linechartView: LineChartView!
    @IBOutlet weak var navBarMonthly: UINavigationBar!
    
    
    @IBAction func randomize(_ sender: UIButton) {
        sea.isHidden = true
        
        let count = Int(arc4random_uniform(20)+3)
        setChartValues(count)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setChartValues()

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setChartValues(_ count:Int = 20) {
        let values = (0..<count).map { (i) -> ChartDataEntry in
            let val = Double(arc4random_uniform(UInt32(count)) + 3)
            return ChartDataEntry(x: Double(i), y: val)
        }
        
        let set1 = LineChartDataSet(values: values, label: "DataSet 1")
        let data = LineChartData(dataSet: set1)
        
        self.linechartView.data = data
    }
    
    @IBAction func actionBtnPressed(_ sender: Any) {
        monthlyBtn.isHidden     = true
        monthlyLbl.isHidden     = true
        weaklyBtn.isHidden      = true
        weaklyLbl.isHidden      = true
        dailyBtn.isHidden       = true
        dailyLbl.isHidden       = true
        linechartView.isHidden  = false
        monthlyHolder.isHidden  = false

        sea.isHidden = false
    }
    
/*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 */

}

