//
//  RelaxedSuggestionsController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 29/03/21.
//

import UIKit

class RelaxedSuggestionsController: UIViewController{
    
    
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

    // Relaxed
    var relaxedMusic = ["UfcAVejslrU", "UV-xydIde9I", "gAuUeIz0olM", "cxoyh7RV4Tk", "Hli_r5Bm97I", "XhSZGBmdFrQ", "wccRif2DaGs", "BoLM0i5Nlvc", "AR8D2yqgQ1U", "A6Ovq52kaIw"]

    // ["Weightless - Macaroni Uniony", "Sweatshirt (Don't Let Go) - A N X", "Swoon - Gray", "Closer - Joshua Radin", "Broken Hands of Mine - Joe Brooks", "Simple Little Ballad - Jesse Ruben", "Vienna - Billy Joel", "Golden Train - Justin Nozuka", "True - Spandau Ballet", "Better Place - Rachel Platten"]

    var relaxedSport = ["Yoga", "Biking"]

    var relaxedReading = ["The Adventures of Tom Sawyer", "The Little Book of Mindfulness", "The Art of Thinking Clearly", "The Girl on the Train", "How the Penguins Saved Veronica", "The Snow Child", "Why Not Me?", "Fantastic Mr Fox", "The Little Prince", "Attachments"]

    var relaxedMovie = ["FF_rYNupPwg", "BSXn-lIs4Y0", "oKNy-MWjkcU", "fq5zU9T_Hl4", "n5rh7O4IDc0", "iRVk0dgOOOQ", "K-X2XzKqBiE", "ZU3Xban0Y6A", "1dYv5u6v55Y", "imm6OR605UI"]
    // ["Chef", "The Fundamentals of Caring", "Space Jam", "Madagascar", "The Perks of Being a Wallflower", "Spirit", "Ferris Bueller’s Day Off", "The Intern", "Pride and Prejudice", "Ocean’s Eleven"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblReading?.text = relaxedReading.randomElement()
        lblSport?.text = relaxedSport.randomElement()
    }
}

