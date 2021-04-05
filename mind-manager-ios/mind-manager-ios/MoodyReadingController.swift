//
//  MoodyReadingController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 05/04/21.
//

import UIKit

class MoodyReadingController: UIViewController{
    
    let moodySuggestion = MoodySuggestionsController()
    
    @IBOutlet weak var imageBook: UIImageView!
    
    @IBOutlet weak var lblBookTitle: UILabel!
    
    @IBOutlet weak var lblAuthor: UILabel!
    
    @IBOutlet weak var lblYear: UILabel!
    
    @IBOutlet weak var lblNoPages: UILabel!
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
    override func viewDidLoad() {
        lblBookTitle?.text = moodySuggestion.moodyReading.randomElement()
        
        switch lblBookTitle.text {
        case "The Young Widower's Handbook":
            lblAuthor?.text = "Tom McAllister"
            lblYear?.text = "2015"
            lblNoPages?.text = "288"
            imageBook.image = UIImage(named: "the_young")
        case "The Extraordinary Life of Sam Hell":
            lblAuthor?.text = "Robert Dugoni"
            lblYear?.text = "2018"
            lblNoPages?.text = "448"
            imageBook.image = UIImage(named: "sam_hell")
        case "To Kill A Mockingbird":
            lblAuthor?.text = "Harper Lee"
            lblYear?.text = "1960"
            lblNoPages?.text = "281"
            imageBook.image = UIImage(named: "to_kill")
        case "The Kite Runner":
            lblAuthor?.text = "Khaled Hosseini"
            lblYear?.text = "2003"
            lblNoPages?.text = "371"
            imageBook.image = UIImage(named: "kite_run")
        case "The Giver of Stars":
            lblAuthor?.text = "Jojo Moyes"
            lblYear?.text = "2019"
            lblNoPages?.text = "367"
            imageBook.image = UIImage(named: "giver_stars")
        case "The Boy in the Striped Pyjamas":
            lblAuthor?.text = "John Boyne"
            lblYear?.text = "2006"
            lblNoPages?.text = "352"
            imageBook.image = UIImage(named: "the_boy")
        case "Room":
            lblAuthor?.text = "Emma Donoghue"
            lblYear?.text = "2010"
            lblNoPages?.text = "336"
            imageBook.image = UIImage(named: "room")
        case "The Glass Castle":
            lblAuthor?.text = "Jeannette Walls"
            lblYear?.text = "2005"
            lblNoPages?.text = "289"
            imageBook.image = UIImage(named: "glass_castle_book")
        case "Wonder":
            lblAuthor?.text = "R. J. Palacio"
            lblYear?.text = "2012"
            lblNoPages?.text = "310"
            imageBook.image = UIImage(named: "wonder_book")
        case "The Fault in Our Starts":
            lblAuthor?.text = "John Green"
            lblYear?.text = "2012"
            lblNoPages?.text = "313"
            imageBook.image = UIImage(named: "fault_stars")
        default:
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "")
        }
    }
}
