//
//  CalmerMoviesPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit
import youtube_ios_player_helper

class CalmerMoviesPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblMovieTitle: UILabel!
    
    @IBOutlet weak var imagePoster: UIImageView!
    
    let calmerSuggestions = CalmerSuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
        let videoID = calmerSuggestions.calmerMovie.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "pvQZfLavWfU" && videoID != "" {
            lblMovieTitle.text = "The Tree of Life"
            imagePoster.image = UIImage(named: "the_tree_of_life")
        }

        if videoID == "oR_e9y-bka0" && videoID != "" {
            lblMovieTitle.text = "2001: A Space Odyssey"
            imagePoster.image = UIImage(named: "space_odyssey")
        }

        if videoID == "PsD0NpFSADM" && videoID != "" {
            lblMovieTitle.text = "500 Days of Summer"
            imagePoster.image = UIImage(named: "500_days_of_summer")
        }

        if videoID == "2ZMGk_Ml1fc" && videoID != "" {
            lblMovieTitle.text = "How to Lose a Guy in 10 Days"
            imagePoster.image = UIImage(named: "how_to_lose_a_guy")
        }

        if videoID == "3_DHhPckJNo" && videoID != "" {
            lblMovieTitle.text = "He’s Just Not That Into You"
            imagePoster.image = UIImage(named: "hes_just_not_that")
        }

        if videoID == "PaZVjZEFkRs" && videoID != "" {
            lblMovieTitle.text = "Good Will Hunting"
            imagePoster.image = UIImage(named: "good_will")
        }

        if videoID == "mjay5vgIwt4" && videoID != "" {
            lblMovieTitle.text = "Eat Pray Love"
            imagePoster.image = UIImage(named: "eat_love_pray")
        }
        
        if videoID == "PMAhVpgzmRU" && videoID != "" {
            lblMovieTitle.text = "The Parent Trap"
            imagePoster.image = UIImage(named: "the_parent_trap")
        }

        if videoID == "TbQm5doF_Uc" && videoID != "" {
            lblMovieTitle.text = "Frozen"
            imagePoster.image = UIImage(named: "frozen")
        }

        if videoID == "yE-f1alkq9I" && videoID != "" {
            lblMovieTitle.text = "Eternal Sunshine of the Spotless Mind"
            imagePoster.image = UIImage(named: "eternal_sunshine")
        }

        if videoID == "" {
            lblMovieTitle.text = ""
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}

