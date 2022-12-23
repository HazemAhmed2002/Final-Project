//
//  SettingsViewController.swift
//  Final_Project
//
//  Created by Hazem Ahmed on 22/12/2022.
//

import UIKit



class SettingsViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    var arr = ["Home Page" , "About the application" , "Terms and Conditions" , "Logout"]
    
        override func viewDidLoad() {
        super.viewDidLoad()
            tableView.delegate = self
            tableView.dataSource = self

        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "settingsCell", for: indexPath)
        cell.selectionStyle = .none
        cell.textLabel?.text = arr[indexPath.row]
        cell.textLabel?.textColor = UIColor.white
        cell.textLabel?.font = UIFont.systemFont(ofSize: 20)
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if(indexPath.row == 0){
            if let vc = storyboard?.instantiateViewController(withIdentifier: "HomePage") as? UIViewController{
                navigationController?.pushViewController(vc, animated: true)
            }
        }else if(indexPath.row == 1){
            if let vc = storyboard?.instantiateViewController(withIdentifier: "AboutTheApp") as? UIViewController{
                navigationController?.pushViewController(vc, animated: true)
            }
        }else if(indexPath.row == 2){
            if let vc = storyboard?.instantiateViewController(withIdentifier: "TermsAndConditions") as? UIViewController{
                navigationController?.pushViewController(vc, animated: true)
            }
        }else if(indexPath.row == 3){
            
            let alert = UIAlertController(title: "Log Out", message: "Are you sure you want to log out?!", preferredStyle: .alert)
            let logOutAction = UIAlertAction(title: "Log Out", style: .destructive) { _ in
                self.logOut()
            }
            alert.addAction(logOutAction)
            let cancelAction = UIAlertAction(title: "cancel", style: .cancel, handler: nil)
            alert.addAction(cancelAction)
            self.present(alert, animated: true, completion: nil)
            
        }
    }
   
    func logOut(){
        if let vc = storyboard?.instantiateViewController(withIdentifier: "UIViewController") as? UIViewController{
            
            present(vc, animated: true)
        }
    }
    
}

