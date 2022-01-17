//
//  ViewController.swift
//  CP-Prework
//
//  Created by Tyler Dakin on 1/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // right align text-field
        billAmountTextField.textAlignment = .right
        navigationItem.title = "Tip Calculator"
        
//      Settings work to be finished later
//        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(settingsButtonPressed))
    }

    
    @IBAction func calculateTip(_ sender: UISegmentedControl) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text ?? "0") ?? 0
        
        // Get total tip by multiplying tip * tipPercentage
        let tipPercentages = [0.15,0.18,0.20]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
//    @objc func settingsButtonPressed() {
//        let vc = SettingsViewController()
//        navigationController?.pushViewController(vc, animated: true)
//    }
}


