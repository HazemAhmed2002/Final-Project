//
//  loginViewController.swift
//  Final_Project
//
//  Created by Hazem Ahmed on 21/12/2022.
//

import UIKit

class loginViewController: UIViewController, UITabBarControllerDelegate {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    

    @IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        var userFound = false
        for user in UsersViewController.usersArr {
            if(usernameTextField.text == user[0] && passwordTextField.text == user[1]){
                if let vc = storyboard?.instantiateViewController(withIdentifier: "UITabBarController") as? UITabBarController{
                    userFound = true
                    present(vc, animated: true)
                    break
                }
                
            }
            
        }
        
        if (userFound == false) {
            let alert = UIAlertController(title: "Error", message: "Invalid username or password", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    
    }
        
    
   

}
