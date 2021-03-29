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
        
        if videoID == "" {
            lblMovieTitle.text = ""
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}

