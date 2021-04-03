//
//  MoodySuggestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit

class MoodySuggestionsController: UIViewController{
    
    
    @IBAction func btnFilter(_ sender: Any) {
    }
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
    @IBOutlet weak var btnMusic: UIButton!
    
    @IBOutlet weak var btnMovie: UIButton!
    
    @IBOutlet weak var lblReading: UILabel!
    
    @IBOutlet weak var lblSport: UILabel!

    
    
    // Hard-coding suggestions
    
    // Moody
    var moodyMusic = ["TdrL3QxjyVw", "osdoLjUNFnA", "dacKE1QVJtU", "6jJD_bXymR0", "KM38-goPJEU", "cL4uhaQ58Rk", "Xpc8mAJ_2nM", "RB-RcX5DS5A", "lbSOLBMUvIE", "mmHLkr6yK_4"]
    // ["Summertime Sadness - Lana Del Rey", "Exile - Taylor Swift", "I See You Everywhere - Eric Chou", "Trying My Best - Anson Seabra", "Grow As We Go - Ben Platt", "Lost Stars - Adam Levine", "When We Were Young - Adele", "The Scientist - Coldplay", "Home - Michael Bublé", "Stick Around - Lukas Graham"]

    var moodySport = ["Walk in Park", "Swimming"]

    var moodyReading = ["The Young Widower's Handbook", "The Extraordinary Life of Sam Hell", "To Kill A Mockingbird", "The Kite Runner", "The Giver of Stars", "The Boy in the Striped Pyjamas", "Room", "The Glass Castle", "Wonder", "The Fault in Our Starts - John Green"]

    var moodyMovie = ["xOsLIiBStEs", "yRUAzGQ3nSY", "lFzVJEksoDY", "bdNiNhSeSDk", "MzgOvvMi8Lg", "Ob7fPOzbmzE", "RNI9o06vqo", "QtdVWsA3ctI", "qYAETtIIClk", "DMOBlEcRuw8"]
    // ["Soul", "Inside Out", "The Lion King", "The Glass Castle", "Charlie St. Cloud", "Wonder", "Lion", "Miss You Already", "E.T., the Extra-Terrestrial", "The Pursuit of Happyness"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblReading?.text = moodyReading.randomElement()
        lblSport?.text = moodySport.randomElement()
    }
}
