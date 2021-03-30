//
//  MusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 25/03/21.
//

import UIKit
import youtube_ios_player_helper

class HappierMusicPlayerController: UIViewController, YTPlayerViewDelegate {
    
    
    @IBOutlet weak var lblSongName: UILabel!

    @IBOutlet weak var lblArtistName: UILabel!
    
    let happierSuggestions = HappierSuggestionsController()

    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerView.delegate = self
        let videoID = happierSuggestions.happierMusic.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "U5TqIdff_DQ" && videoID != "" {
            lblSongName.text = "I Got You (I Feel Good)"
            lblArtistName.text = "James Brown"
            
        }
        
        if videoID == "LSJKz9iAjgY" && videoID != "" {
            lblSongName.text = "Who's Laughing Now"
            lblArtistName.text = "Ava Max"
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