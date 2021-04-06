//
//  QuestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 18/03/21.
//

import UIKit

class QuestionsController: UIViewController {
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
    let questionsArray = [
        "I am full of energy.",
        "I feel tired right now.",
        "I am emotional right now.",
        "I am fed up with people.",
        "I want to be alone right now.",
        "I feel stressed right now."
    ]
    
    var counter = 0
    
    @IBAction func btnSubmit(_ sender: Any) {
    }
    
    @IBOutlet weak var btnSubmitCheck: UIButton!
    
//  ====================================================
    @IBOutlet weak var lblQuestion01: UILabel!
    
    @IBAction func btnQ1A1(_ sender: Any) {
        btnQ1A2Check.isEnabled = false
        btnQ1A2Check.backgroundColor = UIColor.gray
        btnQ1A3Check.isEnabled = false
        btnQ1A3Check.backgroundColor = UIColor.gray
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func btnQ1A2(_ sender: Any) {
        btnQ1A1Check.isEnabled = false
        btnQ1A1Check.backgroundColor = UIColor.gray
        btnQ1A3Check.isEnabled = false
        btnQ1A3Check.backgroundColor = UIColor.gray
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func btnQ1A3(_ sender: Any) {
        btnQ1A1Check.isEnabled = false
        btnQ1A1Check.backgroundColor = UIColor.gray
        btnQ1A2Check.isEnabled = false
        btnQ1A2Check.backgroundColor = UIColor.gray
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBOutlet weak var btnQ1A1Check: UIButton!
    @IBOutlet weak var btnQ1A2Check: UIButton!
    @IBOutlet weak var btnQ1A3Check: UIButton!
    
//  ====================================================
    @IBOutlet weak var lblQuestion02: UILabel!
    
    @IBAction func btnQ2A1(_ sender: Any) {
        btnQ2A2Check.isEnabled = false
        btnQ2A2Check.backgroundColor = UIColor.gray
        btnQ2A3Check.isEnabled = false
        btnQ2A3Check.backgroundColor = UIColor.gray
        
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func btnQ2A2(_ sender: Any) {
        btnQ2A1Check.isEnabled = false
        btnQ2A1Check.backgroundColor = UIColor.gray
        btnQ2A3Check.isEnabled = false
        btnQ2A3Check.backgroundColor = UIColor.gray
        
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func btnQ2A3(_ sender: Any) {
        btnQ2A1Check.isEnabled = false
        btnQ2A1Check.backgroundColor = UIColor.gray
        btnQ2A2Check.isEnabled = false
        btnQ2A2Check.backgroundColor = UIColor.gray
        
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBOutlet weak var btnQ2A1Check: UIButton!
    @IBOutlet weak var btnQ2A2Check: UIButton!
    @IBOutlet weak var btnQ2A3Check: UIButton!
    
//  ====================================================
    @IBOutlet weak var lblQuestion03: UILabel!
    
    @IBAction func btnQ3A1(_ sender: Any) {
        btnQ3A2Check.isEnabled = false
        btnQ3A2Check.backgroundColor = UIColor.gray
        btnQ3A3Check.isEnabled = false
        btnQ3A3Check.backgroundColor = UIColor.gray
        
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func btnQ3A2(_ sender: Any) {
        btnQ3A1Check.isEnabled = false
        btnQ3A1Check.backgroundColor = UIColor.gray
        btnQ3A3Check.isEnabled = false
        btnQ3A3Check.backgroundColor = UIColor.gray
        
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func btnQ3A3(_ sender: Any) {
        btnQ3A1Check.isEnabled = false
        btnQ3A1Check.backgroundColor = UIColor.gray
        btnQ3A2Check.isEnabled = false
        btnQ3A2Check.backgroundColor = UIColor.gray
        
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBOutlet weak var btnQ3A1Check: UIButton!
    @IBOutlet weak var btnQ3A2Check: UIButton!
    @IBOutlet weak var btnQ3A3Check: UIButton!
    
//  ====================================================
    @IBOutlet weak var lblQuestion04: UILabel!
    
    @IBAction func btnQ4A1(_ sender: Any) {
        btnQ4A2Check.isEnabled = false
        btnQ4A2Check.backgroundColor = UIColor.gray
        btnQ4A3Check.isEnabled = false
        btnQ4A3Check.backgroundColor = UIColor.gray
        
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func btnQ4A2(_ sender: Any) {
        btnQ4A1Check.isEnabled = false
        btnQ4A1Check.backgroundColor = UIColor.gray
        btnQ4A3Check.isEnabled = false
        btnQ4A3Check.backgroundColor = UIColor.gray
        
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBAction func btnQ4A3(_ sender: Any) {
        btnQ4A1Check.isEnabled = false
        btnQ4A1Check.backgroundColor = UIColor.gray
        btnQ4A2Check.isEnabled = false
        btnQ4A2Check.backgroundColor = UIColor.gray
        
        counter += 1
        
        if counter == 4 {
            btnSubmitCheck.isEnabled = true
            btnSubmitCheck.backgroundColor = UIColor.yellow
        }
    }
    
    @IBOutlet weak var btnQ4A1Check: UIButton!
    @IBOutlet weak var btnQ4A2Check: UIButton!
    @IBOutlet weak var btnQ4A3Check: UIButton!
    
//  ====================================================
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnSubmitCheck.isEnabled = false
        btnSubmitCheck.backgroundColor = UIColor.gray
        
        lblQuestion01.text = questionsArray.randomElement()
        lblQuestion02.text = questionsArray.randomElement()
        lblQuestion03.text = questionsArray.randomElement()
        lblQuestion04.text = questionsArray.randomElement()
        
        counter = 0
        
        btnQ1A1Check.isEnabled = true
        btnQ1A1Check.backgroundColor = UIColor.blue
        btnQ1A2Check.isEnabled = true
        btnQ1A2Check.backgroundColor = UIColor.blue
        btnQ1A3Check.isEnabled = true
        btnQ1A3Check.backgroundColor = UIColor.blue
        
        btnQ2A1Check.isEnabled = true
        btnQ2A1Check.backgroundColor = UIColor.blue
        btnQ2A2Check.isEnabled = true
        btnQ2A2Check.backgroundColor = UIColor.blue
        btnQ2A3Check.isEnabled = true
        btnQ2A3Check.backgroundColor = UIColor.blue
        
        btnQ3A1Check.isEnabled = true
        btnQ3A1Check.backgroundColor = UIColor.blue
        btnQ3A1Check.isEnabled = true
        btnQ3A2Check.backgroundColor = UIColor.blue
        btnQ3A3Check.isEnabled = true
        btnQ3A3Check.backgroundColor = UIColor.blue
        
        btnQ4A1Check.isEnabled = true
        btnQ4A1Check.backgroundColor = UIColor.blue
        btnQ4A2Check.isEnabled = true
        btnQ4A2Check.backgroundColor = UIColor.blue
        btnQ4A3Check.isEnabled = true
        btnQ4A3Check.backgroundColor = UIColor.blue
        
    }
}
