//
//  SuggestionModel.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 04/04/21.
//

import Foundation

class SuggestionModel: NSObject {
    
    //properties
    var id: String
    var mood: String
    var category_name: String
    var suggestion_name: String
    //var youtube_links: String
    
    //constructor
    init(id:String, mood:String, category_name:String, suggestion_name:String)
         //youtube_links:String)
    {
        
        self.id = id
        self.mood = mood
        self.category_name = category_name
        self.suggestion_name = suggestion_name
        //self.youtube_links = youtube_links
    }
    
    //print String
    override var description: String {
        return "\(String(describing: mood)), \(String(describing: category_name)), \(String(describing: suggestion_name))"
    }
}
