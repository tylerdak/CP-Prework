//
//  SettingsViewController.swift
//  CP-Prework
//
//  Created by Tyler Dakin on 1/13/22.
//

import UIKit

class SettingsViewController: UITableViewController {
    
    let settingsList: [String] =   ["Default Percentage",
                                    "Currency",
                                    "Dark Mode"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.systemBackground
        
        navigationItem.title = "Settings"
        
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = settingsList[indexPath.row]
        
        // Setup accessory view
        switch settingsList[indexPath.row] {
        case "Default Percentage":
            let segCont = UISegmentedControl(items: ["15%","18%","20%"])
            segCont.selectedSegmentIndex = 0
            segCont.addTarget(self, action: #selector(self.defaultTipChanged(_:)), for: .valueChanged)
            cell.accessoryView = segCont
        default:
            cell.accessoryView = nil
        }
        
        return cell
    }
    
    @objc func defaultTipChanged(_ sender: UISegmentedControl) {
        UserDefaults.standard.set(sender.selectedSegmentIndex, forKey: "defaultPercentageIndex")
    }
}

