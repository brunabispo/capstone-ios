//
//  QuestionReadModel.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 04/04/21.
//

import Foundation

protocol QuestionReadModelProtocol: class {
    func itemsDownloaded(items: NSArray)
}

class QuestionReadModel: NSObject, URLSessionDataDelegate {
    
    weak var delegate: QuestionReadModelProtocol!
    let urlPath = "http://143.110.223.72/service_questions.php"
    
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
        let questions = NSMutableArray()
        
        for i in 0 ..< jsonResult.count
        {
            jsonElement = jsonResult[i] as! NSDictionary
            
            let id = (jsonElement["id"] as! String)
            let question_text = (jsonElement["question_text"] as! String)
            let question = QuestionModel(id:id, question_text:question_text)
            
            questions.add(question)
        }
        
        DispatchQueue.main.async(execute: { () -> Void in
            self.delegate.itemsDownloaded(items: questions)
        })
    }
}
