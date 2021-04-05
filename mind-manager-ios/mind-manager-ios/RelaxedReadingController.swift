//
//  RelaxedReadingController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 05/04/21.
//

import UIKit

class RelaxedReadingController: UIViewController{
    
    let relaxedSuggestion = RelaxedSuggestionsController()
    
    @IBOutlet weak var imageBook: UIImageView!
    
    @IBOutlet weak var lblBookTitle: UILabel!
    
    @IBOutlet weak var lblAuthor: UILabel!
    
    @IBOutlet weak var lblYear: UILabel!
    
    @IBOutlet weak var lblNoPages: UILabel!
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
    override func viewDidLoad() {
        lblBookTitle?.text = relaxedSuggestion.relaxedReading.randomElement()
        
        switch lblBookTitle.text {
        case "The Adventures of Tom Sawyer":
            lblAuthor?.text = "Mark Twain"
            lblYear?.text = "1876"
            lblNoPages?.text = "216"
            imageBook.image = UIImage(named: "tom_sawyer")
        case "The Little Book of Mindfulness":
            lblAuthor?.text = "Patrizia Collard"
            lblYear?.text = "2014"
            lblNoPages?.text = "96"
            imageBook.image = UIImage(named: "little_book")
        case "The Art of Thinking Clearly":
            lblAuthor?.text = "Rolf Dobelli"
            lblYear?.text = "2011"
            lblNoPages?.text = "326"
            imageBook.image = UIImage(named: "think")
        case "The Girl on the Train":
            lblAuthor?.text = "Paula Hawkins"
            lblYear?.text = "2015"
            lblNoPages?.text = "317"
            imageBook.image = UIImage(named: "girl_train")
        case "How the Penguins Saved Veronica":
            lblAuthor?.text = "Hazel Prior"
            lblYear?.text = "2020"
            lblNoPages?.text = "368"
            imageBook.image = UIImage(named: "veronica")
        case "The Snow Child":
            lblAuthor?.text = "Eowyn Ivey"
            lblYear?.text = "2011"
            lblNoPages?.text = "400"
            imageBook.image = UIImage(named: "snow")
        case "Why Not Me?":
            lblAuthor?.text = "Mindy Kaling"
            lblYear?.text = "2015"
            lblNoPages?.text = "240"
            imageBook.image = UIImage(named: "why")
        case "Fantastic Mr Fox":
            lblAuthor?.text = "Roald Dahl"
            lblYear?.text = "1970"
            lblNoPages?.text = "96"
            imageBook.image = UIImage(named: "fox")
        case "The Little Prince":
            lblAuthor?.text = "Antoine de Saint-Exupéry"
            lblYear?.text = "1943"
            lblNoPages?.text = "96"
            imageBook.image = UIImage(named: "prince")
        case "Attachments":
            lblAuthor?.text = "Rainbow Rowell"
            lblYear?.text = "2011"
            lblNoPages?.text = "323"
            imageBook.image = UIImage(named: "attach")
        default:
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "")
        }
    }
}

