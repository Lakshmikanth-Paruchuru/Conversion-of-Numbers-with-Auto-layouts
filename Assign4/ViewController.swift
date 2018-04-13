//
//  ViewController.swift
//  Assign4
//
//  Created by Paruchuru, Lakshmikanth on 11/30/17.
//  Copyright © 2017 Paruchuru, Lakshmikanth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var decimal: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction private func bin(_ sender: Any) {
        var output = ""
        let ip: String = decimal.text!
        var temp = Int(ip) ?? 0
        var i: Int = 0
        var remainder = [Int](repeating: 0, count: 100)
        while temp != 0 {
            remainder[i] = temp % 2
            temp = temp / 2
            i += 1
        }
        var j = i - 1
        while j >= 0 {
            output = output + ("\(remainder[j])")
            j -= 1
        }
        let string1 = output
        let string2 = " B"
        let appendString1 = string1+string2
        result.text = appendString1
        
    }
    
        @IBAction private func hex(_ sender: Any) {
        let str: String = decimal.text!
        var temp1 = Int(str) ?? 0
        var k = ""
        while temp1 != 0 {
            let l: Int = temp1 % 16
            temp1 = temp1 / 16
            k = String(format: "%X", l) + (k)
            }
            let string1 = k
            let string2 = " H"
            let appendString1 = string1+string2
            result.text = appendString1
    }
    
        @IBAction private func oct(_ sender: Any) {
        var output = ""
        let ip: String = decimal.text!
        var temp3 = Int(ip) ?? 0
        var i: Int = 0
        var rem = [Int](repeating: 0, count: 100)
        while temp3 != 0 {
            rem[i] = temp3 % 8
            temp3 = temp3 / 8
            i += 1
        }
        var j = i - 1
        while j >= 0 {
            output = output + ("\(rem[j])")
            j -= 1
        }
            let string1 = output
            let string2 = " Q"
            let appendString1 = string1+string2
            result.text = appendString1
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        decimal.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        }
    
    func textFieldShouldReturn(_ scoreText: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}


