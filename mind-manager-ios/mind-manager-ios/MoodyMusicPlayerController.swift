//
//  MoodyMusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit
import youtube_ios_player_helper

class MoodyMusicPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblSongName: UILabel!
    
    @IBOutlet weak var lblArtistName: UILabel!
    
    let moodySuggestions = MoodySuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
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

        if videoID == "dacKE1QVJtU" && videoID != "" {
            lblSongName.text = "I See You Everywhere"
            lblArtistName.text = "Eric Chou"
        }

        if videoID == "6jJD_bXymR0" && videoID != "" {
            lblSongName.text = "Trying My Best"
            lblArtistName.text = "Anson Seabra"
        }

        if videoID == "KM38-goPJEU" && videoID != "" {
            lblSongName.text = "Grow As We Go"
            lblArtistName.text = "Ben Platt"
        }

        if videoID == "cL4uhaQ58Rk" && videoID != "" {
            lblSongName.text = "Lost Stars"
            lblArtistName.text = "Adam Levine"
        }

        if videoID == "Xpc8mAJ_2nM" && videoID != "" {
            lblSongName.text = "When We Were Young"
            lblArtistName.text = "Adele"
        }

        if videoID == "RB-RcX5DS5A" && videoID != "" {
            lblSongName.text = "The Scientist"
            lblArtistName.text = "Coldplay"
        }

        if videoID == "lbSOLBMUvIE" && videoID != "" {
            lblSongName.text = "Home"
            lblArtistName.text = "Michael Bublé"
        }

        if videoID == "mmHLkr6yK_4" && videoID != "" {
            lblSongName.text = "Stick Around"
            lblArtistName.text = "Lukas Graham"
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
