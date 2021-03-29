//
//  MusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 25/03/21.
//

import UIKit
import youtube_ios_player_helper

class MoodyMusicPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblSongName: UILabel!
    
    @IBOutlet weak var lblArtistName: UILabel!
    
    let moodySuggestions = MoodySuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerView.delegate = self
        let videoID = moodySuggestions.moodyMusic.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "TdrL3QxjyVw" && videoID != "" {
            lblSongName.text = "Summertime Sadness"
            lblArtistName.text = "Lana Del Rey"
        }
        
        if videoID == "osdoLjUNFnA" && videoID != "" {
            lblSongName.text = "Exile"
            lblArtistName.text = "Taylor Swift"
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
