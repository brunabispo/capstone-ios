//
//  SuggestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 16/03/21.
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
    var calmerMusic = ["l2UiY2wivTs", "7bTPwmg_cWo"]
    // ["Lemon Tree - Fools Garden", "Lost & Found - Mackenzie Bourg"]
    var calmerSport = ["Yoga", "Swimming"]
    var calmerReading = ["Of all bodily functions that could be contagious, thank God it's THE YAWN - Unknown",
                         "and then i realised that to be more alive\ni had to be less afraid so i did it\ni lost my fear and gained my whole life\nRudy Francisco"]
    var calmerMovie = ["pvQZfLavWfU"]
    // ["The Tree of Life"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblReading?.text = calmerReading.randomElement()
        lblSport?.text = calmerSport.randomElement()
    }
}
