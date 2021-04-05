//
//  MoodyMoviesPlayerController.swift
//  mind-manager-ios
//
//  Created by Fantastic Five on 29/03/21.
//

import UIKit
import youtube_ios_player_helper

class MoodyMoviesPlayerController: UIViewController, YTPlayerViewDelegate {
    
    @IBOutlet weak var lblMovieTitle: UILabel!
    
    @IBOutlet weak var imagePoster: UIImageView!
    
    let moodySuggestions = MoodySuggestionsController()
    
    @IBOutlet var playerView: YTPlayerView!
    
    @IBAction func btnRandom(_ sender: Any) {
        viewDidLoad().self
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerView.delegate = self
        let videoID = moodySuggestions.moodyMovie.randomElement() ?? ""
    
        playerView.load(withVideoId: videoID, playerVars: ["playsinline": 1])
        
        if videoID == "xOsLIiBStEs" && videoID != "" {
            lblMovieTitle.text = "Soul"
            imagePoster.image = UIImage(named: "soul")
        }

        if videoID == "yRUAzGQ3nSY" && videoID != "" {
            lblMovieTitle.text = "Inside Out"
            imagePoster.image = UIImage(named: "inside_out")
        }

        if videoID == "lFzVJEksoDY" && videoID != "" {
            lblMovieTitle.text = "The Lion King"
            imagePoster.image = UIImage(named: "lion_king")
        }

        if videoID == "bdNiNhSeSDk" && videoID != "" {
            lblMovieTitle.text = "The Glass Castle"
            imagePoster.image = UIImage(named: "glass_castle")
        }

        if videoID == "MzgOvvMi8Lg" && videoID != "" {
            lblMovieTitle.text = "Charlie St. Cloud"
            imagePoster.image = UIImage(named: "charlie")
        }

        if videoID == "Ob7fPOzbmzE" && videoID != "" {
            lblMovieTitle.text = "Wonder"
            imagePoster.image = UIImage(named: "wonder")
        }

        if videoID == "RNI9o06vqo" && videoID != "" {
            lblMovieTitle.text = "Lion"
            imagePoster.image = UIImage(named: "lion")
        }

        if videoID == "QtdVWsA3ctI" && videoID != "" {
            lblMovieTitle.text = "Miss You Already"
            imagePoster.image = UIImage(named: "miss_you")
        }

        if videoID == "qYAETtIIClk" && videoID != "" {
            lblMovieTitle.text = "E.T., the Extra-Terrestrial"
            imagePoster.image = UIImage(named: "et")
        }

        if videoID == "DMOBlEcRuw8" && videoID != "" {
            lblMovieTitle.text = "The Pursuit of Happyness"
            imagePoster.image = UIImage(named: "persuit")
        }
        
        if videoID == "" {
            lblMovieTitle.text = ""
        }
    }
    
    func playerViewDidBecomeReady(_ playerView: YTPlayerView) {
        playerView.playVideo()
    }
    
}
