//
//  HappierMoviesPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit
import youtube_ios_player_helper

class HappierMoviesPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblMovieTitle: UILabel!
    
    @IBOutlet weak var imagePoster: UIImageView!
    
    let happierSuggestions = HappierSuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
        let videoID = happierSuggestions.happierMovie.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "uPIEn0M8su0" && videoID != "" {
            lblMovieTitle.text = "Forrest Gump"
            imagePoster.image = UIImage(named: "forrest_gump")
        }

        if videoID == "5UrCaXLBN30" && videoID != "" {
            lblMovieTitle.text = "13 Going on 30"
            imagePoster.image = UIImage(named: "13_going")
        }

        if videoID == "Z2lYA7L7PZY" && videoID != "" {
            lblMovieTitle.text = "The Proposal"
            imagePoster.image = UIImage(named: "proposal")
        }

        if videoID == "qDKo8DNpwOw" && videoID != "" {
            lblMovieTitle.text = "Grease"
            imagePoster.image = UIImage(named: "grease")
        }

        if videoID == "e01NVCveGkg" && videoID != "" {
            lblMovieTitle.text = "Grown Ups"
            imagePoster.image = UIImage(named: "grown_ups")
        }

        if videoID == "7mPdQRXFiPA" && videoID != "" {
            lblMovieTitle.text = "Surf's Up"
            imagePoster.image = UIImage(named: "surfs_up")
        }

        if videoID == "qvsgGtivCgs" && videoID != "" {
            lblMovieTitle.text = "Back to the Future"
            imagePoster.image = UIImage(named: "back_to_future")
        }

        if videoID == "6ZOZwUQKu3E" && videoID != "" {
            lblMovieTitle.text = "The Devil Wears Prada"
            imagePoster.image = UIImage(named: "devil_prada")
        }

        if videoID == "Mgjwq1ZzdPQ" && videoID != "" {
            lblMovieTitle.text = "Clueless"
            imagePoster.image = UIImage(named: "clueless")
        }

        if videoID == "BSXBvor47Zs" && videoID != "" {
            lblMovieTitle.text = "The Breakfast Club"
            imagePoster.image = UIImage(named: "breakfast_club")
        }
        
        if videoID == "" {
            lblMovieTitle.text = ""
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}
