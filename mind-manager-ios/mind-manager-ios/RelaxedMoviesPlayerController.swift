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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
        let videoID = relaxedSuggestions.relaxedMovie.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "FF_rYNupPwg" && videoID != "" {
            lblMovieTitle.text = "Chef"
            imagePoster.image = UIImage(named: "chef")
        }
        
        
        if videoID == "" {
            lblMovieTitle.text = ""
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}
