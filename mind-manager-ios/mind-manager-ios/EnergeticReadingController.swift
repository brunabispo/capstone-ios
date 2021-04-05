//
//  EnergeticReadingController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 05/04/21.
//

import UIKit

class EnergeticReadingController: UIViewController{
    
    let energeticSuggestion = EnergeticSuggestionsController()
    
    @IBOutlet weak var imageBook: UIImageView!
    
    @IBOutlet weak var lblBookTitle: UILabel!
    
    @IBOutlet weak var lblAuthor: UILabel!
    
    @IBOutlet weak var lblYear: UILabel!
    
    @IBOutlet weak var lblNoPages: UILabel!
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
    
    
    var energeticReading = ["The Handmaid’s Tale", "The Lord of the Rings", "The Storyteller’s Secret", "The Secret Wife", "The Second Wife", "The Girl He Used to Know", "Don Quixote", "The Golden Compass", "Harry Potter and The Goblet of Fire", "Hunger Games"]
    
    
    override func viewDidLoad() {
        lblBookTitle?.text = energeticSuggestion.energeticReading.randomElement()
        
        switch lblBookTitle.text {
        case "The Handmaid’s Tale":
            lblAuthor?.text = "Margaret Atwood"
            lblYear?.text = "1985"
            lblNoPages?.text = "311"
            imageBook.image = UIImage(named: "hand_tale")
        case "The Lord of the Rings":
            lblAuthor?.text = "J. R. R. Tolkien"
            lblYear?.text = "1954"
            lblNoPages?.text = "1137"
            imageBook.image = UIImage(named: "lord_rings")
        case "The Storyteller’s Secret":
            lblAuthor?.text = "Sejal Badani"
            lblYear?.text = "2018"
            lblNoPages?.text = "370"
            imageBook.image = UIImage(named: "story_secret")
        case "The Secret Wife":
            lblAuthor?.text = "Gill Paul"
            lblYear?.text = "2016"
            lblNoPages?.text = "418"
            imageBook.image = UIImage(named: "secret_wife")
        case "The Second Wife":
            lblAuthor?.text = "Rebecca Fleet"
            lblYear?.text = "2020"
            lblNoPages?.text = "338"
            imageBook.image = UIImage(named: "second_wife")
        case "The Girl He Used to Know":
            lblAuthor?.text = "Tracey Garvis Graves"
            lblYear?.text = "2019"
            lblNoPages?.text = "304"
            imageBook.image = UIImage(named: "used_know")
        case "Don Quixote":
            lblAuthor?.text = "Miguel de Cervantes"
            lblYear?.text = "1605"
            lblNoPages?.text = "863"
            imageBook.image = UIImage(named: "don")
        case "The Golden Compass":
            lblAuthor?.text = "Phillip Pullman"
            lblYear?.text = "1995"
            lblNoPages?.text = "399"
            imageBook.image = UIImage(named: "golden")
        case "Harry Potter and The Goblet of Fire":
            lblAuthor?.text = "J. K. Rowling"
            lblYear?.text = "2000"
            lblNoPages?.text = "636"
            imageBook.image = UIImage(named: "harry")
        case "Hunger Games":
            lblAuthor?.text = "Suzanne Collins"
            lblYear?.text = "2008"
            lblNoPages?.text = "374"
            imageBook.image = UIImage(named: "hunger")
        default:
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "")
        }
    }
}
