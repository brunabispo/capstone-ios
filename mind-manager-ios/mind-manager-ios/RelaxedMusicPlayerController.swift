//
//  RelaxedMusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 29/03/21.
//

import UIKit
import youtube_ios_player_helper

class RelaxedMusicPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblSongName: UILabel!
    
    @IBOutlet weak var lblArtistName: UILabel!
    
    let relaxedSuggestions = RelaxedSuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playerView.delegate = self
        let videoID = relaxedSuggestions.relaxedMusic.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "UfcAVejslrU" && videoID != "" {
            lblSongName.text = "Weightless"
            lblArtistName.text = "Macaroni Uniony"
        }
        
        if videoID == "UV-xydIde9I" && videoID != "" {
            lblSongName.text = "Sweatshirt (Don't Let Go)"
            lblArtistName.text = "A N X"
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
