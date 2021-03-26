//
//  SuggestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 16/03/21.
//

import SideMenu
import UIKit

class SuggestionsController: UIViewController{
    
    let happierArray = [#imageLiteral(resourceName: "crossword_happier"), #imageLiteral(resourceName: "crossword_happier2"), #imageLiteral(resourceName: "crossword_happier3")]
    let moodyArray = [#imageLiteral(resourceName: "crossword_moody")]
    
    
    
    @IBAction func btnPlay(_ sender: Any) {

    }
    
    @IBOutlet weak var lblMusic: UILabel!
    
    @IBOutlet weak var lblReading: UILabel!
    
    @IBOutlet weak var lblSport: UILabel!
    
    @IBOutlet weak var lblMovie: UILabel!
    
    
    
    // Hard-coding suggestions
    
    // Calmer
    var calmerMusic = ["l2UiY2wivTs", "7bTPwmg_cWo"]
    // ["Lemon Tree - Fools Garden", "Lost & Found - Mackenzie Bourg"]
    var calmerSport = ["Yoga", "Swimming"]
    var calmerReading = ["Of all bodily functions that could be contagious, thank God it's THE YAWN - Unknown",
                         "and then i realised that to be more alive\ni had to be less afraid so i did it\ni lost my fear and gained my whole life\nRudy Francisco"]
    
    // Energetic
    var energeticMusic = ["qpiilPFQtwM", "y1IlYTmX2hI"]
    // ["Play Hard - David Guetta", "Don't Say Goodbye - Alok"]
    var energeticSport = ["Laser-Tag", "Running"]
    var energeticReading = ["Hunger Games - Suzanne Collins",
                         "Harry Potter and the Goblet of Fire - J. K. Rolling"]
    
    // Happier
    var happierMusic = ["U5TqIdff_DQ", "LSJKz9iAjgY"]
    // ["I Feel Good - James Brown", "Who's Laughing Now - Ava Max"]
    var happierSport = ["Paint-Ball", "Laser Tag"]
    var happierReading = ["Diary of a Wimpy Kid - Jeff Kinney",
                         "Happiness is a direction, not a place - Sydney J. Harris"]
    
    // Moody
    var moodyMusic = ["TdrL3QxjyVw", "osdoLjUNFnA"]
    // ["Summertime Sadness - Lana Del Rey", "Exile - Taylor Swift"]
    var moodySport = ["Walk in Park", "Swimming"]
    var moodyReading = ["Two sides on every coin,\nThe heads and the tails.\nTwo sides of the same coin,\nThe successes and the fails. (...)\nDoug Buchanan",
                         "The Fault in Our Stars - John Green"]
    
    // Relaxed
    var relaxedMusic = ["UfcAVejslrU", "UV-xydIde9I"]
    // ["Weightless - Macaroni Uniony", "Sweatshirt (Don't Let Go) - A N X"]
    var relaxedSport = ["Yoga", "Biking"]
    var relaxedReading = ["Time says 'Let there be'\nevery moment and instantly\nthere is space and the radiance\nof each bright galaxy. (...)\nUrsula K. Le Guin",
                         "Relax. Let every moment be what it's going to be.\nWhat's meant to be will come your way,\nwhat's not will fade away.\nUnknown"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblMusic?.text = happierMusic.randomElement()
        lblReading?.text = happierReading.randomElement()
        lblSport?.text = happierSport.randomElement()
    }
}
