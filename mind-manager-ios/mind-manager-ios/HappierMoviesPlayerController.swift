//
//  MusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 25/03/21.
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
        
        if videoID == "" {
            lblMovieTitle.text = ""
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}
