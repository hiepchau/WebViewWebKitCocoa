//
//  ChartViewController.swift
//  WebViewWebKitCocoa
//
//  Created by Châu Hiệp on 02/12/2022.
//

import UIKit
import Charts

class ChartViewController: UIViewController {

    @IBOutlet weak var chartView: LineChartView!
    
    let dataInfo = [2.0, 3.0, 4.5, 10.0, 7.0, 8.3, 12.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateChart()
    }

    func updateChart() {
        
       var lineChartInfo = [ChartDataEntry]()
        
        for i in 0..<dataInfo.count {
            let data = ChartDataEntry(x: Double(i), y: dataInfo[i])
            lineChartInfo.append(data)
        }
        
        let lineForChart = LineChartDataSet(entries: lineChartInfo, label: "Testing Charts")
        lineForChart.colors = [UIColor.purple]
        lineForChart.mode = .cubicBezier
        
        let actualGraph = LineChartData()
        actualGraph.addDataSet(lineForChart)
        
        chartView.data = actualGraph
        chartView.chartDescription?.text = "Testing the graph!"
        
    }
}
