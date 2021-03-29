//
//  SuggestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 16/03/21.
//

import UIKit

class MoodySuggestionsController: UIViewController{
    
    
    @IBAction func btnFilter(_ sender: Any) {
    }
    
    @IBAction func btnRandom(_ sender: Any) {
    }

    
    @IBOutlet weak var lblReading: UILabel!
    
    @IBOutlet weak var lblSport: UILabel!

    
    
    // Hard-coding suggestions
    
    // Moody
    var moodyMusic = ["TdrL3QxjyVw", "osdoLjUNFnA"]
    // ["Summertime Sadness - Lana Del Rey", "Exile - Taylor Swift"]
    var moodySport = ["Walk in Park", "Swimming"]
    var moodyReading = ["Two sides on every coin,\nThe heads and the tails.\nTwo sides of the same coin,\nThe successes and the fails. (...)\nDoug Buchanan",
                         "The Fault in Our Stars - John Green"]
    var moodyMovie = ["xOsLIiBStEs"]
    // ["Soul"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblReading?.text = moodyReading.randomElement()
        lblSport?.text = moodySport.randomElement()
    }
}
