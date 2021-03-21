//
//  QuestionsController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 18/03/21.
//

import SideMenu
import UIKit

class QuestionsController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Creating the side menu
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        
        // Slide to open the menu
        SideMenuManager.default.rightMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        
    }
    
    // Creating the side menu
    var menu: SideMenuNavigationController?
    
    @IBAction func didTapMenu() {
        present(menu!, animated: true)
    }
}
