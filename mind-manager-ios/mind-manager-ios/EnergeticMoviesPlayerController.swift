//
//  EnergeticMoviesPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit
import youtube_ios_player_helper

class EnergeticMoviesPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblMovieTitle: UILabel!
    
    @IBOutlet weak var imagePoster: UIImageView!
    
    let energeticSuggestions = EnergeticSuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
        let videoID = energeticSuggestions.energeticMovie.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "uvbavW31adA" && videoID != "" {
            lblMovieTitle.text = "Gladiator"
            imagePoster.image = UIImage(named: "gladiator")
        }

        if videoID == "YoHD9XEInc0" && videoID != "" {
            lblMovieTitle.text = "Inception"
            imagePoster.image = UIImage(named: "inception")
        }

        if videoID == "ej3ioOneTy8" && videoID != "" {
            lblMovieTitle.text = "The Martian"
            imagePoster.image = UIImage(named: "the_martian")
        }

        if videoID == "JNwNXF9Y6kY" && videoID != "" {
            lblMovieTitle.text = "Star Wars Episode V: The Empire Strikes Back"
            imagePoster.image = UIImage(named: "star_wars")
        }

        if videoID == "cSp1dM2Vj48" && videoID != "" {
            lblMovieTitle.text = "Ready Player One"
            imagePoster.image = UIImage(named: "ready_player")
        }

        if videoID == "s-7pyIxz8Qg" && videoID != "" {
            lblMovieTitle.text = "Catch Me if You Can"
            imagePoster.image = UIImage(named: "catch_me")
        }

        if videoID == "EXeTwQWrcwY" && videoID != "" {
            lblMovieTitle.text = "The Dark Knight"
            imagePoster.image = UIImage(named: "dark_knight")
        }

        if videoID == "uw6jY3VuOcI" && videoID != "" {
            lblMovieTitle.text = "The Italian Job"
            imagePoster.image = UIImage(named: "italian_job")
        }

        if videoID == "xi-1NchUqMA" && videoID != "" {
            lblMovieTitle.text = "Knifes Out"
            imagePoster.image = UIImage(named: "knifes_out")
        }

        if videoID == "7wd5KEaOtm4" && videoID != "" {
            lblMovieTitle.text = "Scott Pilgrim Vs. The World"
            imagePoster.image = UIImage(named: "scott_pil")
        }
        
        if videoID == "" {
            lblMovieTitle.text = ""
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}
