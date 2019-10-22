//
//  TipViewController.swift
//  iClac
//
//  Created by Owen Sutton on 5/1/19.
//  Copyright © 2019 Owen Sutton. All rights reserved.
//

import UIKit

class TipViewController: UIViewController
{
    var TipAmount: Int = 0
    
    @IBOutlet weak var Total_Due: UILabel!
    @IBOutlet weak var Input: UITextField!
    @IBOutlet weak var TipPercent: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var ErrorMessage: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func EnterAmount(_ sender: UITextField) {
        
        let inputint: Double? = Double(Input.text!)
        let Percent = Double(20)
        
        if inputint == nil {
            ErrorMessage.text = "Please Enter a Number"
        }
        else{
            ErrorMessage.text = " "
            let TipAmount = ((inputint! * Percent) / 100)
            let TotalAmount = inputint! + TipAmount
            let TipAmt = round(TipAmount*100)/100
            let TotalAmt = round(TotalAmount*100)/100
            TipPercent.text = String(20)
            TipLabel.text = "$\(TipAmt)";
            Total_Due.text = "$\(TotalAmt)"
        }
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
       
    }
    @IBAction func Slider(_ sender: UISlider){
        
        let inputint: Double? = Double(Input.text!)
        
        
        if inputint == nil {
            ErrorMessage.text = "Please Enter a Number"
        }
         else{
            ErrorMessage.text = " "
            let TipAmount = ((inputint! * Double(sender.value)) / 100)
            let TotalAmount = inputint! + TipAmount
            let TipAmt = round(TipAmount*100)/100
            let TotalAmt = round(TotalAmount*100)/100
            TipPercent.text = String(Int(sender.value))
            TipLabel.text = "$\(TipAmt)";
            Total_Due.text = "$\(TotalAmt)"
        }
    }
}
