//
//  ViewController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 05/03/21.
//

import SideMenu
import UIKit

class ViewController: UIViewController {
    
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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Get rid of menu bar - all the pages
        // self.navigationController?.navigationBar.isHidden = true
        
        // Creating the side menu
        menu = SideMenuNavigationController(rootViewController: MenuListController())
//        menu?.setNavigationBarHidden(true, animated: false)
        
        // Slide to open the menu
        SideMenuManager.default.rightMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
    }
    
    // Creating the side menu
    var menu: SideMenuNavigationController?
    
    @IBAction func didTapMenu() {
        present(menu!, animated: true)
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



