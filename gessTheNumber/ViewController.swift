//
//  ViewController.swift
//  gessTheNumber
//
//  Created by Marta Fonda on 22/12/15.
//  Copyright © 2015 Marta Fonda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBAction func sendButton(sender: UIButton) {
        var inputValue = numberInput.text
        var randomNumber = arc4random_uniform(4)
        randomNumber = randomNumber + 1
        
        if Int(inputValue!) == Int(randomNumber){
            numberLabel.text = "CORRECT!!"
        } else {
            numberLabel.text = "INCORRECT :("
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

