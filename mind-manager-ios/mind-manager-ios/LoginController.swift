//
//  LoginController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 24/03/21.
//

import UIKit

class LoginController: UIViewController {
    
    let welcomeController = WelcomeController()
    
    let clientUsername = "benJeff"
    let clientPassword = "ben_123"
    
    @IBOutlet weak var inputUsername: UITextField!
    
    @IBOutlet weak var inputPassword: UITextField!
    
//    @IBAction func btnSubmitLogin(_ sender: Any) {
//
//        if inputUsername.text == "benJeff" && inputPassword.text == "ben_123" {
//            welcomeController.lblLogin!.title = "Logout"
//        }
//    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
