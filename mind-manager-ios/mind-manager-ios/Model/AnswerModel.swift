//
//  AnswerModel.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 04/04/21.
//

import Foundation

class AnswerModel: NSObject {
    
    //properties
    var id: String
    var question_id: String
    var answer_text: String
    var bored_rating: String
    var energetic_rating: String
    var happy_rating: String
    var sad_rating: String
    var tired_rating: String
    
    //constructor
    init(id:String, question_id:String, answer_text:String, bored_rating:String, energetic_rating:String, happy_rating:String, sad_rating:String, tired_rating:String) {
        self.id = id
        self.question_id = question_id
        self.answer_text = answer_text
        self.bored_rating = bored_rating
        self.energetic_rating = energetic_rating
        self.happy_rating = happy_rating
        self.sad_rating = sad_rating
        self.tired_rating = tired_rating
    }
    
    //print String
    override var description: String {
        return " \(String(describing: answer_text)), \(String(describing: bored_rating)), \(String(describing: energetic_rating)), \(String(describing: happy_rating)), \(String(describing: sad_rating)), \(String(describing: tired_rating))"
    }
}
