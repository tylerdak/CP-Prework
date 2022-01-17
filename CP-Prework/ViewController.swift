//
//  ViewController.swift
//  CP-Prework
//
//  Created by Tyler Dakin on 1/11/22.
//

import UIKit

// Made global so SettingsViewController can access 
let tipPercentages = [0.15,0.18,0.20]

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Tried to do this in the Storyboard but it doesn't seem to be working there...
        // Set textField to number and period(decimal) only
        billAmountTextField.keyboardType = .decimalPad
        // Enable textField right away
        billAmountTextField.becomeFirstResponder()
        
        
        // right align text-field
        billAmountTextField.textAlignment = .right
        navigationItem.title = "Tipsy"
        
//      Settings work to be finished later
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(settingsButtonPressed))
        
        tipControl.selectedSegmentIndex = UserDefaults.standard.integer(forKey: "defaultPercentageIndex")
    }
    
    @objc func settingsButtonPressed() {
        let vc = SettingsViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    // MARK: Calculate Tip Function
    // This will be used both when the user changes their tip and when they adjust the bill amount, to keep the amount updated without the user having to tap the tip amount again.
    // Both the UITextField and the UISegmentedControl are attached to this function
    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text ?? "0") ?? 0
        
        // Get total tip by multiplying tip * tipPercentage
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
        
        if billAmountTextField.text?.count ?? 0 > 10 {
            let largeError = "Bill Too Large 💸"
            tipAmountLabel.text = largeError
            totalLabel.text = largeError
        }
    }
}


