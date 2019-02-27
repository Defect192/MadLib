//
//  FileReader.swift
//  MadLib
//
//  Created by Emily Heaton on 2/23/18.
//  Copyright © 2018 Emily Heaton. All rights reserved.
//

import Foundation

class FileReader{
    
    
    func readData(filename: String) -> Array<String> {
        let bundle = Bundle.main
        var myArray = Array<String>()
        if let path = bundle.path(forResource: filename, ofType: "txt"){
            do{
                myArray = try String(contentsOfFile: path).components(separatedBy: "\n")
                
            }catch{
                print("could not load file :(")
            }
        }
        return DeleteGap(theArray: myArray)

    }
    
    func printData(data: Array<String>, index: Int) -> Array<String> {
        let lineData = data[index].components(separatedBy: "*")
        return lineData
    }
    
    func DeleteGap(theArray: Array<String>) -> Array<String> {
        var ArrayCopy = theArray
        ArrayCopy.removeLast()
        return ArrayCopy
    }
    
    
    
}
