//
//  DailyViewController.swift
//  waterbender
//
//  Created by Chris Chau on 2019-02-17.
//  Copyright © 2019 bigheartsmallbrain. All rights reserved.
//
import Charts
import UIKit

class DailyViewController: UIViewController {

    
    /* Setting up pie chart ---------------*/
    
    @IBOutlet weak var pie_chart: PieChartView!
    
    var showerUsage = PieChartDataEntry(value: 50)
    var faucetUsage = PieChartDataEntry(value: 20)
    var toiletUsage = PieChartDataEntry(value:30)
    
    var totalWaterUsage = [PieChartDataEntry]()
    /* -----------------------------------*/
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        /* Loading chart */
        pie_chart.chartDescription?.text = "Total usage"
        
        
        totalWaterUsage = [showerUsage, faucetUsage, toiletUsage]
        
        updateChartData()

    }
    
    
    func updateChartData() {
        
        let chartDataSet = PieChartDataSet(values: totalWaterUsage, label: nil)
        let chartData = PieChartData(dataSet: chartDataSet)
        
        let colors = [UIColor.blue, UIColor.red, UIColor.yellow]
        
        chartDataSet.colors = colors as! [NSUIColor]
        
        pie_chart.data = chartData
    /* Cite - https://medium.com/@anitaa_1990/create-a-horizontal-paging-uiscrollview-with-uipagecontrol-swift-4-xcode-9-a3dddc845e92 */
        
    }
    
    func createSlides() -> [Slide] {
        
        let slide1:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide1.dailyIcon.image = UIImage(named: "shower")
        slide1.dailyLabel.text = "shower"

        
        let slide2:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide2.dailyIcon.image = UIImage(named: "faucet")
        slide2.dailyLabel.text = "faucet"

        
        let slide3:Slide = Bundle.main.loadNibNamed("Slide", owner: self, options: nil)?.first as! Slide
        slide3.dailyIcon.image = UIImage(named: "toilet")
        slide3.dailyLabel.text = "toilet"
        
    
        return [slide1, slide2, slide3]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
