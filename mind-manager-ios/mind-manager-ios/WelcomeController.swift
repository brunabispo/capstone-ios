//
//  ViewController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 05/03/21.
//

import UIKit

class WelcomeController: UIViewController{
    
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

    }
    
    @IBOutlet weak var lblLogin: UIBarButtonItem!
    
    
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



