//
//  MusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 25/03/21.
//

import UIKit
import youtube_ios_player_helper

class EnergeticMusicPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblSongName: UILabel!
    
    @IBOutlet weak var lblArtistName: UILabel!
    
    let energeticSuggestions = EnergeticSuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerView.delegate = self
        let videoID = energeticSuggestions.energeticMusic.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "qpiilPFQtwM" && videoID != "" {
            lblSongName.text = "Play Hard"
            lblArtistName.text = "David Guetta"
        }
        
        if videoID == "y1IlYTmX2hI" && videoID != "" {
            lblSongName.text = "Don't Say Goodbye"
            lblArtistName.text = "Alok (ft. Tove Lo)"
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
