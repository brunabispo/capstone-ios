//
//  MusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 25/03/21.
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
        
        if videoID == "" {
            lblMovieTitle.text = ""
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}
