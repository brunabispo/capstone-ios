//
//  HappierSuggestionsController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit

class HappierSuggestionsController: UIViewController{
    
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
    
    // Happier
    var happierMusic = ["U5TqIdff_DQ", "LSJKz9iAjgY","MGCkEl-6Hfg", "7-x3uD5z1bQ", "TUVcZfQe-Kw", "RgcZ1PARll8", "uezMm49xZtE", "PKB4cioGs98", "dvgZkm1xWPE", 	"ehZECQUvMhE"]
    // ["I Feel Good - James Brown", "Who's Laughing Now - Ava Max","Shut Up and Dance - WALK THE MOON", "Watermelon Sugar - Harry Styles", "Levitating - Dua Lipa (feat. DaBaby)", "A Few Good Stories - Brett Kissel and Walk Off The Earth", "50 Ways to Say Goodbye - Train", "You Don't Know Me - Jax Jones (ft. RAYE)", "Viva La Vida - Coldplay", "Down - Jay Sean (ft. Lil Wayne)"]

    var happierSport = ["Paint-Ball", "Laser Tag", "Running"]

    var happierReading = ["The Help", "Lolita", "Notes From A Small Island", "Anne Of Green Gables", "The Art of Racing in the Rain", "Moby-Dick", "A Man Called Ove", "Where'd You Go Bernadette", "The Rosie Project", "Diary of a Wimpy Kid"]

    var happierMovie = ["uPIEn0M8su0","5UrCaXLBN30", "Z2lYA7L7PZY", "qDKo8DNpwOw", "e01NVCveGkg", "7mPdQRXFiPA", "qvsgGtivCgs", "6ZOZwUQKu3E", 	"Mgjwq1ZzdPQ","BSXBvor47Zs"]
    // ["Forrest Gump", "13 Going on 30", "The Proposal", "Grease", "Grown Ups", "Surf's Up", "Back to the Future", "The Devil Wears Prada", "Clueless", "The Breakfast Club"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblReading?.text = happierReading.randomElement()
        lblSport?.text = happierSport.randomElement()
    }
}
