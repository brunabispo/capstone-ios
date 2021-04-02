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
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
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
        
        if videoID == "gAuUeIz0olM" && videoID != "" {
            lblSongName.text = "Swoon"
            lblArtistName.text = "Gray"
        }

        if videoID == "cxoyh7RV4Tk" && videoID != "" {
            lblSongName.text = "Closer"
            lblArtistName.text = "Joshua Radin"
        }

        if videoID == "Hli_r5Bm97I" && videoID != "" {
            lblSongName.text = "Broken Hands of Mine"
            lblArtistName.text = "Joe Brooks"
        }

        if videoID == "XhSZGBmdFrQ" && videoID != "" {
            lblSongName.text = "Simple Little Ballad"
            lblArtistName.text = "Jesse Ruben"
        }

        if videoID == "wccRif2DaGs" && videoID != "" {
            lblSongName.text = "Vienna"
            lblArtistName.text = "Billy Joel"
        }

        if videoID == "BoLM0i5Nlvc" && videoID != "" {
            lblSongName.text = "Golden Train"
            lblArtistName.text = "Justin Nozuka"
        }

        if videoID == "AR8D2yqgQ1U" && videoID != "" {
            lblSongName.text = "True"
            lblArtistName.text = "Spandau Ballet"
        }

        if videoID == "A6Ovq52kaIw" && videoID != "" {
            lblSongName.text = "Better Place"
            lblArtistName.text = "Rachel Platten"
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
