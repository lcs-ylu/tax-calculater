//
//  ViewController.swift
//  tax calculater
//
//  Created by Lu, Yunjia on 2019-10-29.
//  Copyright © 2019 Nancy Lu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var totalIncome: UITextField!
    
    @IBOutlet weak var calculate: UIButton!
    @IBOutlet weak var calculateTax: UITextField!
    
    
    let tax = calculateTax.text
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard var totalIncome = totalIncome.text else{
        print("type a number")
            return
        }
        switch calculate {
        case 0...47630 :
            tax = 1.15 * totalIncome
            fallthrough
        case 47631...95259 :
            taxOwning = 1.15 * 47630 + 0.205(totalIncome - 47630)
            fallthrough
        case 95259...147667 :
            taxOwning = 1.15 * 47630 + 0.205 * 47629 + 0.26(totalIncome - 95259)
            fallthrough
        default
        }
        
        
        
        
    }

    
    
    


}

