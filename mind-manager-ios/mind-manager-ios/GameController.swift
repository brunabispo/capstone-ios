//
//  GameController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 18/03/21.
//

import SideMenu
import UIKit

class GameController: UIViewController {
    
    // Instance of SuggestionsController
    var instanceSuggestion = SuggestionsController()
    
    // Instance of ViewController
    var instanceMain = ViewController()
    
    // Word Search Image View
    @IBOutlet weak var wordSearchImage: UIImageView!
    
    // Text field where user will write the word found
    @IBOutlet weak var inputResult: UITextField!
    
    // Label where the result will be displayed after clicking btnCheck
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var tapCheck: UIButton!
    
    
    var counter = 4
    
    // Check Button - display result in the lblResult
    @IBAction func btnCheck(_ sender: Any) {
        
        let happierWords = ["cheerful", "ecstatic", "overjoyed", "joyful"]
        
        let userInput =  inputResult.text ?? ""
        
        if inputResult.text == nil || inputResult.text == "" {
            lblResult.text = "Please enter a word!"
        }
        
        else if !happierWords.contains(userInput.lowercased()) {
            lblResult.text = "The word '\(userInput.lowercased())' is wrong!\n Try again!"
        }
        
        else if happierWords.contains(userInput.lowercased()) && (counter > 1) {
            counter -= 1
            lblResult.text = "You found '\(userInput.lowercased())'!\nThere is \(counter) to go"
        }
        
        else if happierWords.contains(userInput.lowercased()) && (counter == 1) {
            lblResult.text = "You found '\(userInput.lowercased())'!\nYou found them all!"
        }
        
        // does not work
        else if counter == 1 {
            tapCheck.isEnabled = false
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Creating the side menu
        menu = SideMenuNavigationController(rootViewController: MenuListController())
        
        // Slide to open the menu
        SideMenuManager.default.rightMenuNavigationController = menu
        SideMenuManager.default.addPanGestureToPresent(toView: self.view)
        
        // HAVE TO CHECK WHICH BUTTON WAS CLICKED
        // Get a random element (image) from the array
        wordSearchImage.image = instanceSuggestion.happierArray.randomElement()
        
    }
    
    // Creating the side menu
    var menu: SideMenuNavigationController?
    
    @IBAction func didTapMenu() {
        present(menu!, animated: true)
    }
}
