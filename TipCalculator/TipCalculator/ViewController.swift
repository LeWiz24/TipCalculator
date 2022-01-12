//
//  ViewController.swift
//  TipCalculator
//
//  Created by Mario Olivares on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountText: UITextField!
    @IBOutlet weak var calculateTipButton: UIButton!
    @IBOutlet weak var tipPercenttext: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var billAmountLabel: UILabel!
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let billAmount:Double = Double(billAmountText.text!)!
        
        let tipAmount:Double = (Double(tipPercenttext.text!)! / 100) * Double(billAmountText.text!)!
        
        
        
        tipAmountLabel.text = String(format:"$%.02f",(tipAmount))
        
        billAmountLabel.text = String(format: "$%.02f",(tipAmount + billAmount))

            }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

