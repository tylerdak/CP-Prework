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
        
        
        return cell
    }
}

