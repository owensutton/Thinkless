//
//  DiscountCalculatorViewController.swift
//  iClac
//
//  Created by Owen Sutton on 5/8/19.
//  Copyright © 2019 Owen Sutton. All rights reserved.
//

import UIKit

class DiscountCalculatorViewController: UIViewController {

    @IBOutlet weak var DiscountPrice: UILabel!
    @IBOutlet weak var PercentOff: UILabel!
    @IBOutlet weak var PriceOfItem: UITextField!
    @IBOutlet weak var ErrorMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func Slider(_ sender: UISlider) {
        
        let inputint: Double? = Double(PriceOfItem.text!)
        
        if inputint == nil {
            ErrorMessage.text = "Please Enter a Number"
        }
        else{
            ErrorMessage.text = " "
            let DiscountPriced = inputint! * Double(1 - (Double(Int(sender.value)) / Double(100)))
            
            let Discount2 = round(DiscountPriced * 100)/100
            
            DiscountPrice.text = "$\(Discount2)";
            PercentOff.text = String(Int(sender.value))
        }
    }
 
    @IBAction func PriceOfItem(_ sender: UITextField) {
        
        let inputint: Double? = Double(PriceOfItem.text!)
        
        if inputint == nil {
            ErrorMessage.text = "Please Enter a Number"
        }
        else{
            ErrorMessage.text = " "
            let DiscountPriced = inputint! * Double(1 - (Double(20) / Double(100)))
            let Discount2 = round(DiscountPriced * 100)/100
            
            DiscountPrice.text = "$\(Discount2)";
            PercentOff.text = String("20")
    }
    
    
    }
    
}
