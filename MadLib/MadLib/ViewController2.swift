//
//  ViewController2.swift
//  MadLib
//
//  Created by Emily Heaton on 3/29/18.
//  Copyright © 20/Volumes/EMILYHEATON/csis4300/MadLib/MadLib/ViewController2.swift18 Emily Heaton. All rights reserved.
//

import Foundation

import UIKit

class ViewController2: UIViewController {
    
    var AnotherLib = MadLib()
    
    
//    init(){
//        StringA = "not"
//        StringB = "working"
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
//    func setStringA(text: String){
//        StringA = text
//    }
//    func setStringB(text: String){
//        StringB = text
//    }
    
    @IBOutlet weak var imageOne: UIImageView!
    
    @IBOutlet weak var imageTwo: UIImageView!
    
    @IBOutlet weak var imageThree: UIImageView!
    
    @IBOutlet weak var imageFour: UIImageView!
    
    @IBOutlet weak var MainText: UILabel!
    
    @IBAction func goBack(_ sender: UIButton){
        if AnotherLib.pointer-1 >= 0{
            AnotherLib.pointer -= 1
        }else{
            AnotherLib.pointer = AnotherLib.LibFileArray.count-1
        }
        updateUI()
    }
    
    func pullPhoto(){
        
    }
    
    func setTheImages(){
        AnotherLib.ImageOne = UIImage(named: "brokenimage.jpg")
        AnotherLib.ImageTwo = UIImage(named: "brokenimage.jpg")
        AnotherLib.ImageThree = UIImage(named: "brokenimage.jpg")
        AnotherLib.ImageFour = UIImage(named: "brokenimage.jpg")
    }
    
    func getTheImages(){
        imageOne.image = AnotherLib.ImageOne
        imageTwo.image = AnotherLib.ImageTwo
        imageThree.image = AnotherLib.ImageThree
        imageFour.image = AnotherLib.ImageFour
    }
    
    @IBAction func goForward(_ sender: UIButton) {
        if AnotherLib.pointer+1 <= AnotherLib.LibFileArray.count-1{
            AnotherLib.pointer += 1
        }else{
            AnotherLib.pointer = 0
        }
        updateUI()
    }
    
    
    func updateUI(){
        //MainText.text = AnotherLib.setTextBlanks(a: StringA, b: StringB)
        getTheImages()
    }
    
        override func viewDidLoad() {
            updateUI()
            super.viewDidLoad()
        
        }
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
}
