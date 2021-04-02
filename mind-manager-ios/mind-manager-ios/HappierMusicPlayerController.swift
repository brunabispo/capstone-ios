//
//  HappierMusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit
import youtube_ios_player_helper

class HappierMusicPlayerController: UIViewController, YTPlayerViewDelegate {
    
    
    @IBOutlet weak var lblSongName: UILabel!

    @IBOutlet weak var lblArtistName: UILabel!
    
    let happierSuggestions = HappierSuggestionsController()

    @IBOutlet var playerView: YTPlayerView!
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
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

        if videoID == "MGCkEl-6Hfg" && videoID != "" {
            lblSongName.text = "Shut Up and Dance"
            lblArtistName.text = "WALK THE MOON"
        }

        if videoID == "7-x3uD5z1bQ" && videoID != "" {
            lblSongName.text = "Watermelon Sugar"
            lblArtistName.text = "Harry Styles"
        }

        if videoID == "TUVcZfQe-Kw" && videoID != "" {
            lblSongName.text = "Levitating"
            lblArtistName.text = "Dua Lipa (feat. DaBaby)"
        }

        if videoID == "RgcZ1PARll8" && videoID != "" {
            lblSongName.text = "A Few Good Stories"
            lblArtistName.text = "Brett Kissel and Walk Off The Earth"
        }

        if videoID == "uezMm49xZtE" && videoID != "" {
            lblSongName.text = "50 Ways to Say Goodbye"
            lblArtistName.text = "Train"
        }

        if videoID == "PKB4cioGs98" && videoID != "" {
            lblSongName.text = "You Don't Know Me"
            lblArtistName.text = "Jax Jones (ft. RAYE)"
        }

        if videoID == "dvgZkm1xWPE" && videoID != "" {
            lblSongName.text = "Viva La Vida"
            lblArtistName.text = "Coldplay"
        }

        if videoID == "ehZECQUvMhE" && videoID != "" {
            lblSongName.text = "Down"
            lblArtistName.text = "Jay Sean (ft. Lil Wayne)"
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
