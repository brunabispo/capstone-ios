//
//  RelaxedMoviesPlayerController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 29/03/21.
//

import UIKit
import youtube_ios_player_helper

class RelaxedMoviesPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblMovieTitle: UILabel!
    
    @IBOutlet weak var imagePoster: UIImageView!
    
    let relaxedSuggestions = RelaxedSuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
        let videoID = relaxedSuggestions.relaxedMovie.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "FF_rYNupPwg" && videoID != "" {
            lblMovieTitle.text = "Chef"
            imagePoster.image = UIImage(named: "chef")
        }

        if videoID == "BSXn-lIs4Y0" && videoID != "" {
            lblMovieTitle.text = "The Fundamentals of Caring"
            imagePoster.image = UIImage(named: "fundamentals")
        }

        if videoID == "oKNy-MWjkcU" && videoID != "" {
            lblMovieTitle.text = "Space Jam"
            imagePoster.image = UIImage(named: "space_jam")
        }

        if videoID == "fq5zU9T_Hl4" && videoID != "" {
            lblMovieTitle.text = "Madagascar"
            imagePoster.image = UIImage(named: "madagascar")
        }

        if videoID == "n5rh7O4IDc0" && videoID != "" {
            lblMovieTitle.text = "The Perks of Being a Wallflower"
            imagePoster.image = UIImage(named: "perks_wall")
        }

        if videoID == "iRVk0dgOOOQ" && videoID != "" {
            lblMovieTitle.text = "Spirit"
            imagePoster.image = UIImage(named: "spirit")
        }

        if videoID == "K-X2XzKqBiE" && videoID != "" {
            lblMovieTitle.text = "Ferris Bueller’s Day Off"
            imagePoster.image = UIImage(named: "ferris")
        }

        if videoID == "ZU3Xban0Y6A" && videoID != "" {
            lblMovieTitle.text = "The Intern"
            imagePoster.image = UIImage(named: "intern")
        }

        if videoID == "1dYv5u6v55Y" && videoID != "" {
            lblMovieTitle.text = "Pride and Prejudice"
            imagePoster.image = UIImage(named: "pride")
        }

        if videoID == "imm6OR605UI" && videoID != "" {
            lblMovieTitle.text = "Ocean’s Eleven"
            imagePoster.image = UIImage(named: "ocean")
        }
        
        if videoID == "" {
            lblMovieTitle.text = ""
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}
