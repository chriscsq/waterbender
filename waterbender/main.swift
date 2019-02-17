//
//  main.swift
//  waterbender
//
//  Created by Simran Bhattarai on 2/16/19.
//  Copyright © 2019 bigheartsmallbrain. All rights reserved.
//

import Foundation

let sim = Simulation()
var arr = [Int]()

//let nameStr = "MasterbedShower"

arr = sim.gauss(times: 150, name: "Masterbed Shower",  date: 12, start_time: 600, meanVal: 8.2, sdVal: 7.0)

print (arr)
