//
//  CalmerReadingController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 05/04/21.
//

import UIKit

class CalmerReadingController: UIViewController{
    
    let calmerSuggestion = CalmerSuggestionsController()
    
    @IBOutlet weak var imageBook: UIImageView!
    
    @IBOutlet weak var lblBookTitle: UILabel!
    
    @IBOutlet weak var lblAuthor: UILabel!
    
    @IBOutlet weak var lblYear: UILabel!
    
    @IBOutlet weak var lblNoPages: UILabel!
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
    override func viewDidLoad() {
        lblBookTitle?.text = calmerSuggestion.calmerReading.randomElement()
        
        switch lblBookTitle.text {
        case "The Things You Can See Only When You Slow Down":
            lblAuthor?.text = "Haemin Sunim"
            lblYear?.text = "2012"
            lblNoPages?.text = "288"
            imageBook.image = UIImage(named: "slow_down")
        case "Consolations of the Forest":
            lblAuthor?.text = "Sylvain Tesson"
            lblYear?.text = "2011"
            lblNoPages?.text = "266"
            imageBook.image = UIImage(named: "forest")
        case "Collected Poems":
            lblAuthor?.text = "Sylvia Plath"
            lblYear?.text = "1981"
            lblNoPages?.text = "384"
            imageBook.image = UIImage(named: "poems")
        case "How to Love":
            lblAuthor?.text = "Thich Nhat Hanh"
            lblYear?.text = "2016"
            lblNoPages?.text = "128"
            imageBook.image = UIImage(named: "how_love")
        case "A Thousand Mornings":
            lblAuthor?.text = "Mary Oliver"
            lblYear?.text = "2012"
            lblNoPages?.text = "96"
            imageBook.image = UIImage(named: "morning")
        case "Brave Enough":
            lblAuthor?.text = "Cheryl Strayed"
            lblYear?.text = "2015"
            lblNoPages?.text = "143"
            imageBook.image = UIImage(named: "brave")
        case "Little Women":
            lblAuthor?.text = "Louisa May Alcott"
            lblYear?.text = "1868"
            lblNoPages?.text = "759"
            imageBook.image = UIImage(named: "little_woman")
        case "Goodbye, Things":
            lblAuthor?.text = "Fumio Sasaki"
            lblYear?.text = "2015"
            lblNoPages?.text = "288"
            imageBook.image = UIImage(named: "goodbye")
        case "Wind, Sand and Stars":
            lblAuthor?.text = "Antoine de Saint-Exupéry"
            lblYear?.text = "1939"
            lblNoPages?.text = "239"
            imageBook.image = UIImage(named: "wind_sand")
        case "The Curious Incident of the Dog in the Night-Time":
            lblAuthor?.text = "Mark Haddon"
            lblYear?.text = "2003"
            lblNoPages?.text = "274"
            imageBook.image = UIImage(named: "dog_night")
        default:
            lblAuthor?.text = ""
            lblYear?.text = ""
            lblNoPages?.text = ""
            imageBook.image = UIImage(named: "")
        }
    }
}
