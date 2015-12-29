//
//  ViewController.swift
//  Cat Years
//
//  Created by Ramiro Andres on 28/12/15.
//  Copyright © 2015 Ramiro Andres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var catAgeTextField: UITextField!
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func findAge(sender: AnyObject) {
        
        if(catAgeTextField.text == nil || catAgeTextField.text == ""){
            
            resultLabel.text = "La edad de tu gato en años es 0"
            return;
        }
        
        var catAge = Int(catAgeTextField.text!)!
        
        catAge = catAge * 7
        
        resultLabel.text = "La edad de tu gato en años es \(catAge)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultLabel.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

