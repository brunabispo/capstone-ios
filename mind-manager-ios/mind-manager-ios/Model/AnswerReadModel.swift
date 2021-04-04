//
//  AnswerReadModel.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 04/04/21.
//

import Foundation

protocol AnswerReadModelProtocol: class {
    func itemsDownloaded(items: NSArray)
}

class AnswerReadModel: NSObject, URLSessionDataDelegate {
    
    weak var delegate: AnswerReadModelProtocol!
    let urlPath = "http://143.110.223.72/service_answers.php"
    
    func downloadItems() {
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url) { (data, response, error) in
            
            if error != nil {
                print("Error")
            }else {
                print("data downloaded")
                self.parseJSON(data!)
            }
        }
        task.resume()
    }
    func parseJSON(_ data:Data) {
        
        var jsonResult = NSArray()
        
        do{
            jsonResult = try JSONSerialization.jsonObject(with: data, options:JSONSerialization.ReadingOptions.allowFragments) as! NSArray
        } catch let error as NSError {
            print(error)
        }
        
        var jsonElement = NSDictionary()
        let answers = NSMutableArray()
        
        for i in 0 ..< jsonResult.count
        {
            jsonElement = jsonResult[i] as! NSDictionary
            
            let id = (jsonElement["id"] as! String)
            let question_id = (jsonElement["question_id"] as! String)
            let answer_text = (jsonElement["answer_text"] as! String)
            let bored_rating = (jsonElement["bored_rating"] as! String)
            let energetic_rating = (jsonElement["energetic_rating"] as! String)
            let happy_rating = (jsonElement["happy_rating"] as! String)
            let sad_rating = (jsonElement["sad_rating"] as! String)
            let tired_rating = (jsonElement["tired_rating"] as! String)
            
            let answer = AnswerModel(id:id, question_id:question_id, answer_text:answer_text, bored_rating:bored_rating, energetic_rating:energetic_rating, happy_rating:happy_rating, sad_rating:sad_rating, tired_rating:tired_rating)
            
            answers.add(answer)
        }
        
        DispatchQueue.main.async(execute: { () -> Void in
            self.delegate.itemsDownloaded(items: answers)
        })
    }
}
