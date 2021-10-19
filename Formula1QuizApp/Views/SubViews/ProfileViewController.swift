//
//  ProfileViewController.swift
//  Formula1QuizApp
//
//  Created by Maarten Wubs on 10/16/21.
//

import UIKit
import AuthenticationServices

class ProfileViewController: UITableViewController {
    
    let pageCategories = ["Profile", "Settings", "Leaderboard (Comming Soon)"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        navigationController?.navigationItem.backBarButtonItem?.tintColor = .red
        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pageCategories.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pageCell", for: indexPath)
        cell.textLabel?.text = pageCategories[indexPath.row]
        cell.textLabel?.textColor = .white
        cell.backgroundColor = .black
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let view = UIStoryboard(name: "Main", bundle: nil)
        let controller = view.instantiateViewController(withIdentifier: "SettingsPage")
        navigationController?.pushViewController(controller, animated: true)
    }

}
