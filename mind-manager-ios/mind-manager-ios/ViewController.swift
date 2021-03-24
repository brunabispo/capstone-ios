//
//  ViewController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 05/03/21.
//

import SideMenu
import UIKit

class ViewController: UIViewController, MenuControllerDelegate {
    
    // More Moody option
    @IBAction func btnMoody(_ sender: Any) {
        
    }
    
    // Happier option
    @IBAction func btnHappier(_ sender: Any) {
        
    }
    
    // More Energetic option
    @IBAction func btnEnergetic(_ sender: Any) {
        
    }
    
    // Calmer option
    @IBAction func btnCalmer(_ sender: Any) {
        
    }
    
    // More Relaxed option
    @IBAction func btnRelaxed(_ sender: Any) {
        
    }
    
    // I Don't Know option
    @IBAction func btnIDontKnow(_ sender: Any) {
        
    }
    
    // Creating the side menu
    var sideMenu: SideMenuNavigationController?
    
    private let loginController = LoginController()
    private let aboutController = AboutController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Get rid of menu bar - all the pages
        // self.navigationController?.navigationBar.isHidden = true
        
        // Creating the side menu
        let menu = MenuListController(with: ["Login", "About"])
        sideMenu = SideMenuNavigationController(rootViewController: menu)
        
        menu.delegate = self
        
        // Slide to open the menu
        SideMenuManager.default.rightMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        
        addChildController()
    }
    
    private func addChildController() {
        addChild(loginController)
        addChild(aboutController)
        
        view.addSubview(loginController.view)
        view.addSubview(aboutController.view)
        
        loginController.view.frame = view.bounds
        aboutController.view.frame = view.bounds
        
        loginController.didMove(toParent: self)
        aboutController.didMove(toParent: self)
        
        loginController.view.isHidden = true
        aboutController.view.isHidden = true
    }
    
    func didSelectMenuItem(named: String) {
        sideMenu?.dismiss(animated: true, completion: { [weak self] in
            if named == "Login" {
                self?.loginController.view.isHidden = false
                self?.aboutController.view.isHidden = true
            }
            else if named == "About" {
                self?.loginController.view.isHidden = true
                self?.aboutController.view.isHidden = false
            }
        })
    }
    
    @IBAction func didTapMenu() {
        present(sideMenu!, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "moreMoody" ||
            segue.identifier == "happier" ||
            segue.identifier == "moreEnergetic" ||
            segue.identifier == "calmer" ||
            segue.identifier == "moreRelaxed"
        {
            
            
        }
    }
}



