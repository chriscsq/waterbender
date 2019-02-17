//
//  Simulator.swift
//  waterbender
//
//  Created by Simran Bhattarai on 2/16/19.
//  Copyright © 2019 bigheartsmallbrain. All rights reserved.
//

import Foundation
import GameplayKit

class Simulation {
    func gauss(times: Int, name: String, date: Int, start_time: Int, meanVal: Float, sdVal: Float)-> Array<Int> {
        
        //let fileName = "Data"
        //let DocumentDirURL = try! FileManager.default.url(for: .documentDirectory, in:.userDomainMask, appropriateFor: nil, create: true)
        //let fileURL = DocumentDirURL.appendingPathComponent(fileName).appendingPathExtension("txt")
        
        //print("File Path: \(fileURL.path)")
        
        let random = GKRandomSource()
        let duration = GKGaussianDistribution(randomSource: random, mean: meanVal, deviation: sdVal)
        var i = 0
        var durdata = [Int]()
        while i <= times {
            let dur = duration.nextInt()
            if dur <= 0 {
                i -= 1
            }
            else {
                //    do {
                
                //        try name.data(using: String.Encoding.utf8)?.write(to: fileURL, options: Data.WritingOptions.withoutOverwriting)
                //        try String(date).data(using: String.Encoding.utf8)?.write(to: fileURL, options: Data.WritingOptions.withoutOverwriting)
                //        try String(start_time).data(using: String.Encoding.utf8)?.write(to: fileURL, options: Data.WritingOptions.withoutOverwriting)
                //        try String(dur).data(using: String.Encoding.utf8)?.write(to: fileURL, options: Data.WritingOptions.withoutOverwriting)
                //       try "\n".data(using: String.Encoding.utf8)?.write(to: fileURL, options: Data.WritingOptions.withoutOverwriting)
                
                //    } catch let error as NSError {
                //        print("Failed to write to URL")
                //        print(error)
                //    }
                durdata.append(dur)
                i += 1
            }
        }
        return durdata
    }
}

//name,date,start_time,duration\n
