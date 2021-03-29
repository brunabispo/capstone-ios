//
//  CalmerMusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 29/03/21.
//

import UIKit
import youtube_ios_player_helper

class CalmerMusicPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblSongName: UILabel!
    
    @IBOutlet weak var lblArtistName: UILabel!
    
    let calmerSuggestions = CalmerSuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerView.delegate = self
        let videoID = calmerSuggestions.calmerMusic.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])

        
        if videoID == "l2UiY2wivTs" && videoID != "" {
            lblSongName.text = "Lemon Tree"
            lblArtistName.text = "Fools Garden"
        }
        
        if videoID == "7bTPwmg_cWo" && videoID != "" {
            lblSongName.text = "Lost & Found"
            lblArtistName.text = "Mackenzie Bourg"
        }
        
        if videoID == "" {
            lblSongName.text = ""
            lblArtistName.text = ""
        }
    }
        
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
    
}
