//
//  EnergeticSuggestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit

class EnergeticSuggestionsController: UIViewController{
    
    
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

    // Energetic
    var energeticMusic = ["qpiilPFQtwM", "y1IlYTmX2hI", "rubpIfLPzvU", "eFjjO_lhf9c", "ApXoWvfEYVU", "5y_KJAg8bHI", "ANIkOH0Hb9Y", "8aQEnevF8wE", "GtEvysh1654", "Tt3F2x0RuZI"]
    // ["Play Hard - David Guetta", "Don't Say Goodbye - Alok", "The Middle - Jimmy Eat World", "Summer Of '69 - Bryan Adams", "Sunflower - Post Malone, Swae Lee", "Wake Me Up - Avicii", "You - Galantis", "Rapture - Alok & Daniel Blume", "Thunder - Imagine Dragons", "Runaway (U & I) - Galantis"]

    var energeticSport = ["Laser-Tag", "Running", "Boxing"]

    var energeticReading = ["The Handmaid’s Tale", "The Lord of the Rings", "The Storyteller’s Secret", "The Secret Wife", "The Second Wife", "The Girl He Used to Know", "Don Quixote", "The Golden Compass", "Harry Potter and The Goblet of Fire", "Hunger Games"]

    var energeticMovie = ["uvbavW31adA", "YoHD9XEInc0", "ej3ioOneTy8", "JNwNXF9Y6kY", "cSp1dM2Vj48", "s-7pyIxz8Qg", "EXeTwQWrcwY", "uw6jY3VuOcI", "xi-1NchUqMA", "7wd5KEaOtm4"]
    // ["Gladiator", "Inception", "The Martian", "Star Wars Episode V: The Empire Strikes Back", "Ready Player One", "Catch Me if You Can", "The Dark Knight", "The Italian Job", "Knifes Out", "Scott Pilgrim Vs. The World"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblReading?.text = energeticReading.randomElement()
        lblSport?.text = energeticSport.randomElement()
    }
}
