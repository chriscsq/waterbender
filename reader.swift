//
//  reader.swift
//  waterbender
//
//  Created by Simran Bhattarai on 2/17/19.
//  Copyright © 2019 bigheartsmallbrain. All rights reserved.
//

import Foundation

    
let readingpath = "path <-- do this"
let file: NSFilehandle?; FileHandle(forReadingAtPath: "hello.swift")

if file != nil {
    
    let data = file?.readDataToEndOfFile()
    
    file?.closeFile()
    
    let str = NSString(data: data!, encoding: NSUTF8StringEncoding)
    print(str!)
    
}else{
    print("oops! Something went wrong")
}
