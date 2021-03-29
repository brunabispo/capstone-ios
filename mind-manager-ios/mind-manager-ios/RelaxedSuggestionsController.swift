//
//  RelaxedSuggestionsController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 29/03/21.
//

import UIKit

class RelaxedSuggestionsController: UIViewController{
    
    
    @IBAction func btnFilter(_ sender: Any) {
    }
    
    @IBAction func btnRandom(_ sender: Any) {
    }

    
    @IBOutlet weak var lblReading: UILabel!
    
    @IBOutlet weak var lblSport: UILabel!

    
    
    // Hard-coding suggestions

    // Relaxed
    var relaxedMusic = ["UfcAVejslrU", "UV-xydIde9I"]
    // ["Weightless - Macaroni Uniony", "Sweatshirt (Don't Let Go) - A N X"]
    var relaxedSport = ["Yoga", "Biking"]
    var relaxedReading = ["Time says 'Let there be'\nevery moment and instantly\nthere is space and the radiance\nof each bright galaxy. (...)\nUrsula K. Le Guin",
                         "Relax. Let every moment be what it's going to be.\nWhat's meant to be will come your way,\nwhat's not will fade away.\nUnknown"]
    var relaxedMovie = ["FF_rYNupPwg"]
    // ["Chef"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblReading?.text = relaxedReading.randomElement()
        lblSport?.text = relaxedSport.randomElement()
    }
}

