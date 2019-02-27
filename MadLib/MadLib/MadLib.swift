//
//  MadLib.swift
//  MadLib
//
//  Created by Emily Heaton on 2/23/18.
//  Copyright © 2018 Emily Heaton. All rights reserved.
//

import Foundation

import UIKit

class MadLib{
    
    let reader = FileReader()
    
    var pointer = 0;
    
    var LibFileArray = Array<String>()
    
    var LineText = Array<String>()
    
    var NameOne: String
    var NameTwo: String
    var NameThree: String
    var NameFour: String
    
    var PlaceOne: String
    var PlaceTwo: String
    var PlaceThree: String
    var PlaceFour: String
    
    var ItemOne: String
    var ItemTwo: String
    
    var Verb: String
    
    var Cry: String
    
    var Wisdom: String
    
    var theCreature: String
    
    var ActionOne: String
    var ActionTwo: String
    
    var Mood: String
    
    var ImageOne = UIImage(named: "brokenimage.jpg")
    var ImageTwo = UIImage(named: "brokenimage.jpg")
    var ImageThree = UIImage(named: "brokenimage.jpg")
    var ImageFour = UIImage(named: "brokenimage.jpg")
    
    init(){
        
        NameOne = "BLANK"
        NameTwo = "BLANK"
        NameThree = "BLANK"
        NameFour = "BLANK"
        
        PlaceOne = "BLANK"
        PlaceTwo = "BLANK"
        PlaceThree = "BLANK"
        PlaceFour = "BLANK"
        
        ItemOne = "BLANK"
        ItemTwo = "BLANK"
        
        Verb = "BLANK"
        
        Cry = "BLANK"
        
        Wisdom = "BLANK"
        
        theCreature = "BLANK"
        
        ActionOne = "BLANK"
        ActionTwo = "BLANK"

        Mood = "BLANK"
        
    }
    
    
    func setNames(One: String?, Two: String?, Three: String?, Four: String?){
        if One != nil || One != ""{
            NameOne = One!
        }else{
            NameOne = RandomSelectFromDictionary(Index: 2)
        }
        if Two != nil || Two != ""{
            NameTwo = Two!
        }else{
            NameTwo = RandomSelectFromDictionary(Index: 2)
        }
        if Three != nil || Three != ""{
            NameThree = Three!
        }else{
            NameThree = RandomSelectFromDictionary(Index: 2)
        }
        if Four != nil || Four != ""{
            NameFour = Four!
        }else{
            NameFour = RandomSelectFromDictionary(Index: 2)
        }
    }
    
    func setPlaces(One: String?, Two: String?, Three: String?, Four: String?){
        if One != nil || One != ""{
            PlaceOne = One!
        }else{
            PlaceOne = RandomSelectFromDictionary(Index: 5)
        }
        if Two != nil || Two != ""{
            PlaceTwo = Two!
        }else{
            PlaceTwo = RandomSelectFromDictionary(Index: 5)
        }
        if Three != nil || Three != ""{
            PlaceThree = Three!
        }else{
            PlaceThree = RandomSelectFromDictionary(Index: 5)
        }
        if Four != nil || Four != ""{
            PlaceFour = Four!
        }else{
            PlaceFour = RandomSelectFromDictionary(Index: 5)
        }
    }
    
    func setItems(One: String?, Two: String?){
        if One != nil || One != ""{
            ItemOne = One!
        }else{
            ItemOne = RandomSelectFromDictionary(Index: 8)
        }
        if Two != nil || Two != ""{
            ItemTwo = Two!
        }else{
            ItemTwo = RandomSelectFromDictionary(Index: 8)
        }
    }
    
    func setPastTenseVerb(One: String?){
        if One != nil || One != ""{
            Verb = One!
        }else{
            Verb = RandomSelectFromDictionary(Index: 11)
        }
    }
    
    func setDesperateCry(One: String?){
        if One != nil || One != ""{
            Cry = One!
        }else{
            Cry = RandomSelectFromDictionary(Index: 14)
        }
    }
    
    func setWisdomPhrase(One: String?){
        if One != nil || One != ""{
            Wisdom = One!
        }else{
            Wisdom = RandomSelectFromDictionary(Index: 17)
        }
    }
    
    func setCreature(One: String?){
        if One != nil || One != ""{
            theCreature = One!
        }else{
            theCreature = RandomSelectFromDictionary(Index: 20)
        }
    }
    
    func setAction(One: String?, Two: String?){
        if One != nil || One != ""{
            ActionOne = One!
        }else{
            ActionOne = RandomSelectFromDictionary(Index: 23)
        }
        if Two != nil || Two != ""{
            ActionTwo = Two!
        }else{
            ActionTwo = RandomSelectFromDictionary(Index: 23)
        }
    }
    
    func setMood(One: String?){
        if One != nil || One != ""{
            Mood = One!
        }else{
            Mood = RandomSelectFromDictionary(Index: 26)
        }
    }
    
    
    
    func setTextBlanks() -> String{
        let space = " "
        LibFileArray = reader.readData(filename: "RealMadLib")
        LineText = reader.printData(data: LibFileArray, index: pointer)
//        if a == "" || a == nil {
//            trueA = RandomSelectFromDictionary()
//        }else{
//            trueA = a!
//        }
//        if b == "" || a == nil {
//            trueB = RandomSelectFromDictionary()
//        }else{
//            trueB = b!
//        }
        for i in 0..<LineText.count{
            if LineText[i] == "Name1"{
                LineText[i] = space+NameOne+space
            }
            if LineText[i] == "Name2"{
                LineText[i] = space+NameTwo+space
            }
            if LineText[i] == "Name3"{
                LineText[i] = space+NameThree+space
            }
            if LineText[i] == "Name4"{
                LineText[i] = space+NameFour+space
            }
            if LineText[i] == "Item1"{
                LineText[i] = space+ItemOne+space
            }
            if LineText[i] == "Item2"{
                LineText[i] = space+ItemTwo+space
            }
            if LineText[i] == "Place1"{
                LineText[i] = space+PlaceOne+space
            }
            if LineText[i] == "Place2"{
                LineText[i] = space+PlaceTwo+space
            }
            if LineText[i] == "Place3"{
                LineText[i] = space+PlaceThree+space
            }
            if LineText[i] == "Place4"{
                LineText[i] = space+PlaceFour+space
            }
            if LineText[i] == "Action1"{
                LineText[i] = space+ActionOne+space
            }
            if LineText[i] == "Action2"{
                LineText[i] = space+ActionTwo+space
            }
            if LineText[i] == "Mood1"{
                LineText[i] = space+Mood+space
            }
            if LineText[i] == "DesperateCry"{
                LineText[i] = space+Cry+space
            }
            if LineText[i] == "WisdomPhrase"{
                LineText[i] = space+Wisdom+space
            }
            if LineText[i] == "PastVerb"{
                LineText[i] = space+Verb+space
            }
        }
        return ArrayToString(array: LineText)

    }
    
    func ArrayToString(array: Array<String>) -> String{
        var myString = ""
        for i in 0..<array.count{
            myString += array[i]
        }
        return myString
    }
    
    func RandomSelectFromDictionary(Index: Int) -> String{
        let myDictionary = reader.printData(data: reader.readData(filename: "TrueDictionary"), index: Index)
        let randomIndex = Int(arc4random_uniform(UInt32(myDictionary.count)))
        return myDictionary[randomIndex]
    }
    
    
}
