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
        if(usernameTextField.text == "Hazem" && passwordTextField.text == "123456"){
            if let vc = storyboard?.instantiateViewController(withIdentifier: "UITabBarController") as? UITabBarController{
                
                present(vc, animated: true)
            }
            
        }else {
            let alert = UIAlertController(title: "Error", message: "Invalid username or password", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
    
    }
        
    
   

}
