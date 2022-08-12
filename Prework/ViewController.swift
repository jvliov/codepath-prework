//
//  ViewController.swift
//  Prework
//
//  Created by Julio Valdes on 8/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var sliderTipLabel: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill *
            tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update total amount
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func calculateTipFromSlider(_ sender: Any) {
        
        //Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let customTip = Double(round(tipSlider.value * 100) / 100) * bill
        let total = bill + customTip
        
        //Update tip percentage label
        sliderTipLabel.text = String(format: "%.f%%", Double(round(tipSlider.value * 100) / 100) * 100)
        //Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", customTip)
        //Update total amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

