//
//  HappierReadingController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 05/04/21.
//

import UIKit

class HappierReadingController: UIViewController{
    
    let happierSuggestion = HappierSuggestionsController()
    
    @IBOutlet weak var imageBook: UIImageView!
    
    @IBOutlet weak var lblBookTitle: UILabel!
    
    @IBOutlet weak var lblAuthor: UILabel!
    
    @IBOutlet weak var lblYear: UILabel!
    
    @IBOutlet weak var lblNoPages: UILabel!
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
    
    override func viewDidLoad() {
        lblBookTitle?.text = happierSuggestion.happierReading.randomElement()
        
        switch lblBookTitle.text {
        case "The Help":
            lblAuthor?.text = "Kathryn Stockett"
            lblYear?.text = "2009"
            lblNoPages?.text = "524"
            imageBook.image = UIImage(named: "the_help")
        case "Lolita":
            lblAuthor?.text = "Vladimir Nabokov"
            lblYear?.text = "1955"
            lblNoPages?.text = "336"
            imageBook.image = UIImage(named: "lolita")
        case "Notes From A Small Island":
            lblAuthor?.text = "Bill Bryson"
            lblYear?.text = "2001"
            lblNoPages?.text = "324"
            imageBook.image = UIImage(named: "notes_from")
        case "Anne Of Green Gables":
            lblAuthor?.text = "Lucy Montgomery"
            lblYear?.text = "1908"
            lblNoPages?.text = "356"
            imageBook.image = UIImage(named: "anne_gables")
        case "The Art of Racing in the Rain":
            lblAuthor?.text = "Garth Stein"
            lblYear?.text = "2008"
            lblNoPages?.text = "336"
            imageBook.image = UIImage(named: "the_art")
        case "Moby-Dick":
            lblAuthor?.text = "Herman Melville"
            lblYear?.text = "1851"
            lblNoPages?.text = "378"
            imageBook.image = UIImage(named: "moby")
        case "A Man Called Ove":
            lblAuthor?.text = "Fredrik Backman"
            lblYear?.text = "2012"
            lblNoPages?.text = "368"
            imageBook.image = UIImage(named: "man_ove")
        case "Where'd You Go Bernadette":
            lblAuthor?.text = "Maria Semple"
            lblYear?.text = "2012"
            lblNoPages?.text = "351"
            imageBook.image = UIImage(named: "where_bern")
        case "The Rosie Project":
            lblAuthor?.text = "Graeme Simsion"
            lblYear?.text = "2013"
            lblNoPages?.text = "304"
            imageBook.image = UIImage(named: "rosie")
        case "Diary of a Wimpy Kid - Book 1":
            lblAuthor?.text = "Jeff Kinney"
            lblYear?.text = "2011"
            lblNoPages?.text = "228"
            imageBook.image = UIImage(named: "wimpy")
        default:
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "")
        }
    }
}
