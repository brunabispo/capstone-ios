//
//  AdminMainController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 05/04/21.
//

import UIKit

class AdminMainController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnLogout(_ sender: Any) {
        
        performSegue(withIdentifier: "goBackToWelcome", sender: self)
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        if self.isBeingPresented || self.isMovingToParent {
            self.performSegue(withIdentifier: "goToLogin", sender: self)
        }
    }
}

