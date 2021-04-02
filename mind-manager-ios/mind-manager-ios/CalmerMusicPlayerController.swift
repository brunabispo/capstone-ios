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
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
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

        if videoID == "0kP8ZdkJ88g" && videoID != "" {
            lblSongName.text = "Warm Under the Light"
            lblArtistName.text = "Justin Nozuka"
        }

        if videoID == "3eLittIRa8A" && videoID != "" {
            lblSongName.text = "Those Nights"
            lblArtistName.text = "Bastille"
        }

        if videoID == "ZGNt_UM5x-4" && videoID != "" {
            lblSongName.text = "You Were Good to Me"
            lblArtistName.text = "Jeremy Zucker & Chelsea Cutler"
        }

        if videoID == "bTRPWm9qndY" && videoID != "" {
            lblSongName.text = "Highway 5"
            lblArtistName.text = "UMAGAT"
        }

        if videoID == "VPRjCeoBqrI" && videoID != "" {
            lblSongName.text = "A Sky Full Of Stars"
            lblArtistName.text = "Coldplay"
        }

        if videoID == "cTUAxPDVxn8" && videoID != "" {
            lblSongName.text = "Gentle Heart"
            lblArtistName.text = "Joshua Hyslop"
        }

        if videoID == "n6BwAWiHcSg" && videoID != "" {
            lblSongName.text = "All I Want"
            lblArtistName.text = "Kodaline"
        }

        if videoID == "4FbjRsGRHU0" && videoID != "" {
            lblSongName.text = "Falling Like The Stars"
            lblArtistName.text = "James Arthur"
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
