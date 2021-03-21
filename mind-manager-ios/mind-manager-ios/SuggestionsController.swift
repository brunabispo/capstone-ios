//
//  SuggestionsController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 16/03/21.
//

import SideMenu
import UIKit

class SuggestionsController: UIViewController, SuggestionProtocol {
    var musicSuggestion: String = ""
    
    var gameSuggestion: String = ""
    
    var sportSuggestion: String = ""
    
    var readingSuggestion: String = ""
    
    
    // Hard-coding suggestions
    
    // Calmer
    var calmerMusic = ["Lemon Tree - Fools Garden", "Lost & Found - Mackenzie Bourg"]
    var calmerSport = ["Yoga", "Swimming"]
    var calmerGames = ["Bubble Shooter", "Tetris"]
    var calmerReading = ["Of all bodily functions that could be contagious, thank God it's THE YAWN - Unknown",
                         "and then i realised that to be more alive\ni had to be less afraid so i did it\ni lost my fear and gained my whole life\nRudy Francisco"]
    
    // Energetic
    var energeticMusic = ["Play Hard - David Guetta", "Don't Say Goodbye - Alok"]
    var energeticSport = ["Laser-Tag", "Running"]
    var energeticGames = ["Just Dance", "Hide & Seek"]
    var energeticReading = ["Hunger Games - Suzanne Collins",
                         "Harry Potter and the Goblet of Fire - J. K. Rolling"]
    
    // Happier
    var happierMusic = ["I Feel Good - James Brown", "Who's Laughing Now - Ava Max"]
    var happierSport = ["Paint-Ball", "Laser Tag"]
    var happierGames = ["Just Dance", "Hide & Seek"]
    var happierReading = ["Diary of a Wimpy Kid - Jeff Kinney",
                         "Happiness is a direction,\nnot a place\nSydney J. Harris"]
    
    // Moody
    var moodyMusic = ["Summertime Sadness - Lana Del Rey", "Exile - Taylor Swift"]
    var moodySport = ["Walk in Park", "Swimming"]
    var moodyGames = ["Chess", "The Sims"]
    var moodyReading = ["Two sides on every coin,\nThe heads and the tails.\nTwo sides of the same coin,\nThe successes and the fails. (...)\nDoug Buchanan",
                         "The Fault in Our Stars - John Green"]
    
    // Relaxed
    var relaxedMusic = ["Weightless - Macaroni Uniony", "Sweatshirt (Don't Let Go) - A N X"]
    var relaxedSport = ["Yoga", "Biking"]
    var relaxedGames = ["Monopoly One", "Bubble Shooter"]
    var relaxedReading = ["Time says 'Let there be'\nevery moment and instantly\nthere is space and the radiance\nof each bright galaxy. (...)\nUrsula K. Le Guin",
                         "Relax. Let every moment be what it's going to be.\nWhat's meant to be will come your way,\nwhat's not will fade away.\nUnknown"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Creating the side menu
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        
        // Slide to open the menu
        SideMenuManager.default.rightMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        
    }
    
    // Creating the side menu
    var menu: SideMenuNavigationController?
    
    @IBAction func didTapMenu() {
        present(menu!, animated: true)
    }
}
