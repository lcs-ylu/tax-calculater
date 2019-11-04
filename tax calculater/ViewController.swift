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
    var taxOwing:Double = 0.0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        guard var totalIncome = totalIncome.text else{
            return
        }
        guard let income = Double(totalIncome) else{
            calculateTax.text = "type a double"
            return
        }
      
        
        switch income {
        case 0...47630 :
            taxOwing = 0.15 * income
            
        case 47631...95259 :
            taxOwing = 0.15 * 47630 + 0.205*(income - 47630)
            
        case 95259...147667 :
            taxOwing = 0.15 * 47630 + 0.205 * 47629 + 0.26*(income - 95259)
            
        default:
            return
        }
         calculateTax.text = "$\(taxOwing)"
        
        
        
    }

    
    
    


}

