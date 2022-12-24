//
//  UsersViewController.swift
//  Final_Project
//
//  Created by Hazem Ahmed on 23/12/2022.
//

import UIKit

class UsersViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    static var usersArr = [["Hazem" , "123456"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func SignUpBtn(_ sender: Any) {
        if let name = userName.text , let password = passwordTxt.text {
            UsersViewController.usersArr.append([name , password])
            
        }
    }
    

}
