//
//  MusicPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 25/03/21.
//

import UIKit
import youtube_ios_player_helper

class MoviesPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblMovieTitle: UILabel!
    
    @IBOutlet weak var imagePoster: UIImageView!
    
    let suggestionsController = SuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
//        let videoID = suggestionsController.happierMovie.randomElement() ?? ""
        let videoID = suggestionsController.happierMovie.randomElement() ?? ""
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "pvQZfLavWfU" && videoID != "" {
            lblMovieTitle.text = "The Tree of Life"
            imagePoster.image = UIImage(named: "the_tree_of_life")
        }
        
        if videoID == "uvbavW31adA" && videoID != "" {
            lblMovieTitle.text = "Gladiator"
            imagePoster.image = UIImage(named: "gladiator")
        }
        
        if videoID == "uPIEn0M8su0" && videoID != "" {
            lblMovieTitle.text = "Forrest Gump"
            imagePoster.image = UIImage(named: "forrest_gump")
        }
        
        if videoID == "xOsLIiBStEs" && videoID != "" {
            lblMovieTitle.text = "Soul"
            imagePoster.image = UIImage(named: "soul")
        }
        
        if videoID == "FF_rYNupPwg" && videoID != "" {
            lblMovieTitle.text = "Chef"
            imagePoster.image = UIImage(named: "chef")
        }
        
        
        if videoID == "" {
            lblMovieTitle.text = ""
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
}
