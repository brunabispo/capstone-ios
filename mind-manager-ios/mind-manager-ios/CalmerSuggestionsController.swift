//
//  CalmerSuggestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit

class CalmerSuggestionsController: UIViewController{
    
    @IBAction func btnFilter(_ sender: Any) {
        
    }
    
    @IBAction func btnRandom(_ sender: Any) {
        
    }

    
    @IBOutlet weak var lblReading: UILabel!
    
    @IBOutlet weak var lblSport: UILabel!

    // Hard-coding suggestions
    
    // Calmer
    var calmerMusic = ["l2UiY2wivTs", "7bTPwmg_cWo", "0kP8ZdkJ88g", "3eLittIRa8A", "ZGNt_UM5x-4", "bTRPWm9qndY", "VPRjCeoBqrI", "cTUAxPDVxn8", "n6BwAWiHcSg", "4FbjRsGRHU0"]
    // ["Lemon Tree - Fools Garden", "Lost & Found - Mackenzie Bourg", "Warm Under the Light - Justin Nozuka", "Those Nights - Bastille", "You Were Good to Me - Jeremy Zucker & Chelsea Cutler", "Highway 5 - UMAGAT", "A Sky Full Of Stars - Coldplay", "Gentle Heart - Joshua Hyslop", "All I Want - Kodaline", "Falling Like The Stars - James Arthur"]


    var calmerSport = ["Yoga", "Swimming", "Golfing", "Hiking"]

    var calmerReading = ["The Things You Can See Only When You Slow Down", "Consolations of the Forest", "Collected Poems", "How to Love", "A Thousand Mornings", "Brave Enough", "Little Women", "Goodbye, Things", "Wind, Sand and Stars", "The Curious Incident of the Dog in the Night"]

    var calmerMovie = ["pvQZfLavWfU", "oR_e9y-bka0", "PsD0NpFSADM", "2ZMGk_Ml1fc", "3_DHhPckJNo", "PaZVjZEFkRs", "mjay5vgIwt4", "PMAhVpgzmRU", "TbQm5doF_Uc", "yE-f1alkq9I"]
    // ["The Tree of Life", "2001: A Space Odyssey", "500 Days of Summer", "How to Lose a Guy in 10 Days", "He’s Just Not That Into You", "Good Will Hunting", "Eat Pray Love", "The Parent Trap", "Frozen", "Eternal Sunshine of the Spotless Mind"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblReading?.text = calmerReading.randomElement()
        lblSport?.text = calmerSport.randomElement()
    }
}
