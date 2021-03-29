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
    
    // Calmer
    var calmerMusic = ["l2UiY2wivTs", "7bTPwmg_cWo"]
    // ["Lemon Tree - Fools Garden", "Lost & Found - Mackenzie Bourg"]
    var calmerSport = ["Yoga", "Swimming"]
    var calmerReading = ["Of all bodily functions that could be contagious, thank God it's THE YAWN - Unknown",
                         "and then i realised that to be more alive\ni had to be less afraid so i did it\ni lost my fear and gained my whole life\nRudy Francisco"]
    var calmerMovie = ["pvQZfLavWfU"]
    // ["The Tree of Life"]
    
    // Moody
    var moodyMusic = ["TdrL3QxjyVw", "osdoLjUNFnA"]
    // ["Summertime Sadness - Lana Del Rey", "Exile - Taylor Swift"]
    var moodySport = ["Walk in Park", "Swimming"]
    var moodyReading = ["Two sides on every coin,\nThe heads and the tails.\nTwo sides of the same coin,\nThe successes and the fails. (...)\nDoug Buchanan",
                         "The Fault in Our Stars - John Green"]
    var moodyMovie = ["xOsLIiBStEs"]
    // ["Soul"]
    
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
        
        lblReading?.text = moodyReading.randomElement()
        lblSport?.text = moodySport.randomElement()
    }
}
