//
//  EnergeticMusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit
import youtube_ios_player_helper

class EnergeticMusicPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblSongName: UILabel!
    
    @IBOutlet weak var lblArtistName: UILabel!
    
    let energeticSuggestions = EnergeticSuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
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

        if videoID == "rubpIfLPzvU" && videoID != "" {
            lblSongName.text = "The Middle"
            lblArtistName.text = "Jimmy Eat World"
        }

        if videoID == "eFjjO_lhf9c" && videoID != "" {
            lblSongName.text = "Summer Of '69"
            lblArtistName.text = "Bryan Adams"
        }

        if videoID == "ApXoWvfEYVU" && videoID != "" {
            lblSongName.text = "Sunflower"
            lblArtistName.text = "Post Malone, Swae Lee"
        }

        if videoID == "5y_KJAg8bHI" && videoID != "" {
            lblSongName.text = "Wake Me Up"
            lblArtistName.text = "Avicii"
        }

        if videoID == "ANIkOH0Hb9Y" && videoID != "" {
            lblSongName.text = "You"
            lblArtistName.text = "Galantis"
        }

        if videoID == "8aQEnevF8wE" && videoID != "" {
            lblSongName.text = "Rapture"
            lblArtistName.text = "Alok & Daniel Blume"
        }

        if videoID == "GtEvysh1654" && videoID != "" {
            lblSongName.text = "Thunder"
            lblArtistName.text = "Imagine Dragons"
        }

        if videoID == "Tt3F2x0RuZI" && videoID != "" {
            lblSongName.text = "Runaway (U & I)"
            lblArtistName.text = "Galantis"
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
