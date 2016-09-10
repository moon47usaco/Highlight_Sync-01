//
//  ViewController.swift
//
//  Created by Ryan Mooney on 8/17/16.
//  Copyright © 2016 Ryan Mooney. All rights reserved.
//

import Foundation
import Cocoa
import Alamofire
import SwiftyJSON
import Charts

//Prices are ["Open"=[0], "High"=[1], "Low"=[2], "Last"[3]]
var xValues = [String]()
var yValues: [[Double]] = []
var yValuesIndicatorLower: [Double] = []
var yValuesIndicatorOverlay: [Double] = []
let dataVlaues = DataValues()

var jsonCount = 0

class ViewController: NSViewController, ChartViewDelegate {

    
    @IBOutlet weak var combinedChartView: CombinedChartView!
    
    @IBOutlet weak var lineChartView: LineChartView!
    
    // Zoom Buttons
    @IBAction func zoomAll(sender: AnyObject) {
        combinedChartView.fitScreen()
        lineChartView.fitScreen()
    }
    
    @IBAction func zoomIn(sender: AnyObject) {
        combinedChartView.zoom(1.5, scaleY: 1, x: self.view.frame.width, y: 0)
        lineChartView.zoom(1.5, scaleY: 1, x: self.view.frame.width, y: 0)
    }
    
    @IBAction func zoomOut(sender: AnyObject) {
        combinedChartView.zoom(2/3, scaleY: 1, x: self.view.frame.width, y: 0)
        lineChartView.zoom(2/3, scaleY: 1, x: self.view.frame.width, y: 0)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        combinedChartView.delegate = self
        lineChartView.delegate = self
        
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 0.95).CGColor
        
        combinedChartView.noDataText = "Loading data..."
        lineChartView.noDataText = "Loading data..."
        //candleStickChartView.noDataTextDescription = "REASON"
        let dataValuesInst = dataVlaues.getDataValues()
        xValues = dataValuesInst.xValues
        yValues = dataValuesInst.yValues
        
        //Pass values to indicators
        indicatorOverlay(yValues)
        indicatorLower(yValues)
        
        //Call function to draw charts
        setChart(xValues, valuesCandleChart: yValues, indicatorLowerValues: yValuesIndicatorLower, indicatorOverlayValues: yValuesIndicatorOverlay)
    }
    
    //Function to set chart values
    func setChart(xValues: [String], valuesCandleChart: [[Double]], indicatorLowerValues: [Double], indicatorOverlayValues: [Double]) {
        
        
        var yValsCandleChart : [CandleChartDataEntry] = []
        
        for i in 0..<valuesCandleChart.count {
            let high = valuesCandleChart[i][1]
            let low = valuesCandleChart[i][2]
            let open = valuesCandleChart[i][0]
            let close = valuesCandleChart[i][3]
            
            yValsCandleChart.append(CandleChartDataEntry(xIndex: i, shadowH: high, shadowL: low, open: open, close: close))
        }
        
        var indicatorLower_yValues: [ChartDataEntry] = []
        
        for i in 0..<xValues.count {
            let indicatorLower_yValue = ChartDataEntry(value: indicatorLowerValues[i], xIndex: i)
            indicatorLower_yValues.append(indicatorLower_yValue)
        }
        
        var indicatorOverlay_yValues: [ChartDataEntry] = []
        
        for i in 0..<xValues.count {
            let indicatorOverlay_yValue = ChartDataEntry(value: indicatorOverlayValues[i], xIndex: i)
            indicatorOverlay_yValues.append(indicatorOverlay_yValue)
        }
        
        let candleChartDataSet = CandleChartDataSet(yVals: yValsCandleChart, label: "Price")
        let lineOverlayChartDataSet = LineChartDataSet(yVals: indicatorOverlay_yValues, label: "indicatorOverlay")
        
        let data: CombinedChartData = CombinedChartData(xVals: xValues)
        
        data.candleData = CandleChartData(xVals: xValues, dataSets: [candleChartDataSet])
        data.lineData = LineChartData(xVals: xValues, dataSets: [lineOverlayChartDataSet])
        combinedChartView.drawOrder = [3, 2]
        
        combinedChartView.data = data
        
        candleChartDataSet.decreasingColor = NSColor.redColor()
        candleChartDataSet.increasingColor = NSColor.greenColor()
        candleChartDataSet.neutralColor = NSColor.blueColor()
        candleChartDataSet.shadowColorSameAsCandle = true
        candleChartDataSet.shadowWidth = 1
        candleChartDataSet.decreasingFilled = true
        candleChartDataSet.increasingFilled = false
        candleChartDataSet.drawValuesEnabled = false
        combinedChartView.doubleTapToZoomEnabled = false
        lineOverlayChartDataSet.highlightEnabled = false
        lineOverlayChartDataSet.drawCirclesEnabled = false
        lineOverlayChartDataSet.drawValuesEnabled = false
        
        let lineChartDataSet = LineChartDataSet(yVals: indicatorLower_yValues, label: "indicatorLower")
        let lineChartData = LineChartData(xVals: xValues, dataSet: lineChartDataSet)
        lineChartView.data = lineChartData
        
        lineChartDataSet.drawCirclesEnabled = false
        lineChartView.doubleTapToZoomEnabled = false


    }
    
    //Build indicatorLower
    func indicatorLower(yValues: [[Double]]) {
        for i in 0..<yValues.count {
            yValuesIndicatorLower.append(yValues[i][3]/1000)
        }
    }
    
    //Build indicatorOverlay
    func indicatorOverlay(yValues: [[Double]]) {
        for i in 0..<yValues.count {
            yValuesIndicatorOverlay.append(yValues[i][3]+100)
        }
    }

    func chartValueSelected(chartView: ChartViewBase, entry: ChartDataEntry, dataSetIndex: Int, highlight: ChartHighlight) {
        if  chartView == combinedChartView {
            lineChartView.highlightValues([highlight])
        }else {
            combinedChartView.highlightValues([highlight])
        }
    }
    
    override var representedObject: AnyObject? {
        didSet {
            // Update the view, if already loaded.
        }
    }


}

