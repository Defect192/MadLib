//
//  ViewController.swift
//  MadLib
//
//  Created by Emily Heaton on 2/23/18.
//  Copyright © 2018 Emily Heaton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let myLib = MadLib()
    
    @IBOutlet weak var FirstName: UITextField!
    @IBOutlet weak var SecondName: UITextField!
    @IBOutlet weak var ThirdName: UITextField!
    @IBOutlet weak var FourthName: UITextField!
    
    @IBOutlet weak var FirstItem: UITextField!
    @IBOutlet weak var SecondItem: UITextField!
    
    @IBOutlet weak var FirstPlace: UITextField!
    @IBOutlet weak var SecondPlace: UITextField!
    @IBOutlet weak var ThirdPlace: UITextField!
    @IBOutlet weak var FourthPlace: UITextField!
    
    @IBOutlet weak var FirstAction: UITextField!
    @IBOutlet weak var SecondAction: UITextField!
    
    @IBOutlet weak var Cry: UITextField!
    
    @IBOutlet weak var Wisdom: UITextField!
    
    @IBOutlet weak var Creature: UITextField!
    
    
    @IBAction func Next(_ sender: Any) {
        performSegue(withIdentifier: "next", sender: nil)
    }
    
    func SetLib(){
        myLib.setNames(One: FirstName.text, Two: SecondName.text, Three: ThirdName.text, Four: FourthName.text)
        myLib.setPlaces(One: FirstPlace.text, Two: SecondName.text, Three: ThirdName.text, Four: FourthName.text)
        myLib.setItems(One: FirstItem.text, Two: SecondItem.text)
        myLib.setAction(One: FirstAction.text, Two: SecondAction.text)
        myLib.setDesperateCry(One: Cry.text)
        myLib.setWisdomPhrase(One: Wisdom.text)
        myLib.setCreature(One: Creature.text)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "next"{
            let TransferLib = myLib
            if let destination = segue.destination as? ViewController2 {
                destination.AnotherLib = TransferLib
            }
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //contactStore.requestAccess(for: .contacts) { (success, error) in
        //  if success {
        //      print("Authorization Successfull")
        //  }
        //}
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
