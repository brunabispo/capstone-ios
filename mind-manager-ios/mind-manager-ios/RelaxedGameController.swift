//
//  RelaxedGameController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 29/03/21.
//

import UIKit

class RelaxedGameController: UIViewController {
    
    // word hunt images randomly selected
    let relaxedArray = [#imageLiteral(resourceName: "crossword_relaxed"), #imageLiteral(resourceName: "crossword_relaxed2"), #imageLiteral(resourceName: "crossword_relaxed3")]
    
    // Word Search Image View
    @IBOutlet weak var wordSearchImage: UIImageView!
    
    // Text field where user will write the word found
    @IBOutlet weak var inputResult: UITextField!
    
    // Label where the result will be displayed after clicking btnCheck
    @IBOutlet weak var lblResult: UILabel!
    
    @IBOutlet weak var lblWordsFound: UILabel!
    
    @IBOutlet weak var tapCheck: UIButton!
    
    
    var counter = 4
    var foundArray: [String] = []
    
    // Check Button - display result in the lblResult
    @IBAction func btnCheck(_ sender: Any) {
        
        // Words in the game
        let relaxedWords = ["casual", "laid back", "tranquil", "patient"]

        
        let userInput =  inputResult.text ?? ""
        
        if inputResult.text == nil || inputResult.text == "" {
            lblResult.textColor = UIColor.red
            lblResult.text = "Please enter a word!"
            inputResult.text = ""
        }
        
        else if !relaxedWords.contains(userInput.lowercased()) {
            lblResult.textColor = UIColor.red
            lblResult.text = "The word '\(userInput.lowercased())' is wrong!\n Try again!"
        }
        
        else if relaxedWords.contains(userInput.lowercased()) && (counter > 1) {
            if foundArray.contains(userInput.lowercased()) == false {
                lblWordsFound.text = ""
                lblResult.textColor = UIColor.black
                counter -= 1
                lblResult.text = "You found '\(userInput.lowercased())'!\nThere is \(counter) to go"
                inputResult.text = ""
                foundArray.append(userInput.lowercased())
                
                // print the words that was already found
                for word in foundArray {
                    lblWordsFound.text! += "\(word)\n"
                }
            }
            else if foundArray.contains(userInput.lowercased()) {
                inputResult.text = ""
                lblResult.textColor = UIColor.red
                lblResult.text = "You already found '\(userInput.lowercased())'!\nThere is \(counter) to go"
            }
            
        }
        
        else if relaxedWords.contains(userInput.lowercased()) && (counter == 1) && foundArray.contains(userInput.lowercased()) == false {
            lblWordsFound.text = ""
            lblResult.textColor = UIColor.blue
            lblResult.text = "You found '\(userInput.lowercased())'!\nYou found them all!"
            inputResult.text = ""
            foundArray.append(userInput.lowercased())
            
            // user is not able to click or type anymore
            inputResult.isEnabled = false
            tapCheck.isEnabled = false
            
            // print the words that was already found
            for word in foundArray {
                lblWordsFound.text! += "\(word)\n"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // HAVE TO CHECK WHICH BUTTON WAS CLICKED
        // Get a random element (image) from the array
        wordSearchImage.image = relaxedArray.randomElement()
        lblResult.text = ""
        lblWordsFound.text = ""
    }
}

