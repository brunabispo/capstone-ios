//
//  SuggestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 16/03/21.
//

import UIKit

class HappierSuggestionsController: UIViewController{
    
    @IBAction func btnFilter(_ sender: Any) {
    }
    
    @IBAction func btnRandom(_ sender: Any) {
    }
    

    @IBOutlet weak var lblReading: UILabel!
    
    @IBOutlet weak var lblSport: UILabel!
    
    // Hard-coding suggestions
    
    // Happier
    var happierMusic = ["U5TqIdff_DQ", "LSJKz9iAjgY"]
    // ["I Feel Good - James Brown", "Who's Laughing Now - Ava Max"]
    var happierSport = ["Paint-Ball", "Laser Tag"]
    var happierReading = ["Diary of a Wimpy Kid - Jeff Kinney",
                         "Happiness is a direction, not a place - Sydney J. Harris"]
    var happierMovie = ["uPIEn0M8su0"]
    // ["Forest Gump"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblReading?.text = happierReading.randomElement()
        lblSport?.text = happierSport.randomElement()
    }
}
