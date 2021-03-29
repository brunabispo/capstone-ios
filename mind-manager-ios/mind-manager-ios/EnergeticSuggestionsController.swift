//
//  SuggestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 16/03/21.
//

import UIKit

class EnergeticSuggestionsController: UIViewController{
    
    
    @IBAction func btnFilter(_ sender: Any) {
    }
    
    @IBAction func btnRandom(_ sender: Any) {
    }
    
    
    @IBOutlet weak var lblReading: UILabel!
    
    @IBOutlet weak var lblSport: UILabel!

    
    
    // Hard-coding suggestions

    // Energetic
    var energeticMusic = ["qpiilPFQtwM", "y1IlYTmX2hI"]
    // ["Play Hard - David Guetta", "Don't Say Goodbye - Alok"]
    var energeticSport = ["Laser-Tag", "Running"]
    var energeticReading = ["Hunger Games - Suzanne Collins",
                         "Harry Potter and the Goblet of Fire - J. K. Rolling"]
    var energeticMovie = ["uvbavW31adA"]
    // ["Gladiator"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblReading?.text = energeticReading.randomElement()
        lblSport?.text = energeticSport.randomElement()
    }
}
