//
//  MusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 25/03/21.
//

import UIKit
import youtube_ios_player_helper

class MusicPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblSongName: UILabel!
    
    @IBOutlet weak var lblArtistName: UILabel!
    
    let suggestionsController = SuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
        let videoID = suggestionsController.happierMusic.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "U5TqIdff_DQ" && videoID != "" {
            lblSongName.text = "I Feel Good"
            lblArtistName.text = "James Brown"
        }
        
        if videoID == "LSJKz9iAjgY" && videoID != "" {
            lblSongName.text = "Who's Laughing Now"
            lblArtistName.text = "Ava Max"
        }
        
        if videoID == "l2UiY2wivTs" && videoID != "" {
            lblSongName.text = "Lemon Tree"
            lblArtistName.text = "Fools Garden"
        }
        
        if videoID == "7bTPwmg_cWo" && videoID != "" {
            lblSongName.text = "Lost & Found"
            lblArtistName.text = "Mackenzie Bourg"
        }
        
        if videoID == "qpiilPFQtwM" && videoID != "" {
            lblSongName.text = "Play Hard"
            lblArtistName.text = "David Guetta"
        }
        
        if videoID == "y1IlYTmX2hI" && videoID != "" {
            lblSongName.text = "Lost & Found"
            lblArtistName.text = "Mackenzie Bourg"
        }
        
        if videoID == "7bTPwmg_cWo" && videoID != "" {
            lblSongName.text = "Don't Say Goodbye"
            lblArtistName.text = "Alok"
        }
        
        if videoID == "TdrL3QxjyVw" && videoID != "" {
            lblSongName.text = "Summertime Sadness"
            lblArtistName.text = "Lana Del Rey"
        }
        
        if videoID == "osdoLjUNFnA" && videoID != "" {
            lblSongName.text = "Exile"
            lblArtistName.text = "Taylor Swift"
        }
        
        if videoID == "UfcAVejslrU" && videoID != "" {
            lblSongName.text = "Weightless"
            lblArtistName.text = "Macaroni Uniony"
        }
        
        if videoID == "UV-xydIde9I" && videoID != "" {
            lblSongName.text = "Sweatshirt (Don't Let Go)"
            lblArtistName.text = "A N X"
        }
        
        if videoID == "U5TqIdff_DQ" && videoID != "" {
            lblSongName.text = "I Feel Good"
            lblArtistName.text = "James Brown"
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
