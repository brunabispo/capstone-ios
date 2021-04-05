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
    
    
    
    
    var relaxedReading = ["The Adventures of Tom Sawyer", "The Little Book of Mindfulness", "The Art of Thinking Clearly", "The Girl on the Train", "How the Penguins Saved Veronica", "The Snow Child", "Why Not Me?", "Fantastic Mr Fox", "The Little Prince", "The Little Prince"]
    
    
    override func viewDidLoad() {
        lblBookTitle?.text = relaxedSuggestion.relaxedReading.randomElement()
        
        switch lblBookTitle.text {
        case "The Adventures of Tom Sawyer":
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "tom_sawyer")
        case "The Little Book of Mindfulness":
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "little_book")
        case "The Art of Thinking Clearly":
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "think")
        case "The Girl on the Train":
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "girl_train")
        case "How the Penguins Saved Veronica":
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "veronica")
        case "The Snow Child":
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "snow")
        case "Why Not Me?":
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "why")
        case "Fantastic Mr Fox":
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "fox")
        case "The Little Prince":
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "prince")
        case "Attachments":
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "attach")
        default:
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "")
        }
    }
}

