//
//  LoginController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 24/03/21.
//

import UIKit

class LoginController: UIViewController {
    
    let welcomeController = WelcomeController()
    
    let adminUsername = "benjeff"
    let adminPassword = "123_ben"
    
    @IBOutlet weak var inputUsername: UITextField!
    
    @IBOutlet weak var inputPassword: UITextField!
    
    @IBAction func btnSubmitLogin(_ sender: Any) {
        let username = inputUsername.text
        let password = inputPassword.text
        
        // Check if fields are empty
        if username == "" || password == "" {
//            lblError.text = "Please enter your username"
            displayErrorAlert(errorAlert: "Please enter your username.")
            return
        }

        // Check if username and password are not correct
        if username != adminUsername || password != adminPassword {
//            lblError.text = "Please enter your username"
            displayErrorAlert(errorAlert: "Please enter the correct credentials.")
            return
        }
        
        let alert = UIAlertController(title: "Alert", message: "Credentials Accepted", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default){ action in
            self.dismiss(animated: true, completion: nil)
        }
        
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func displayErrorAlert(errorAlert: String) {
        
        let alert = UIAlertController(title: "Alert", message: errorAlert, preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }

}
