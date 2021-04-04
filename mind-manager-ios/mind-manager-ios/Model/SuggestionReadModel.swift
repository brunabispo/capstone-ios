//
//  SuggestionReadModel.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 04/04/21.
//

import Foundation

protocol SuggestionReadModelProtocol: class {
    func itemsDownloaded(items: NSArray)
}

class SuggestionReadModel: NSObject, URLSessionDataDelegate {
    
    weak var delegate: SuggestionReadModelProtocol!
    let urlPath = "http://143.110.223.72/service_suggestions.php"
    
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
        let suggestions = NSMutableArray()
        
        for i in 0 ..< jsonResult.count
        {
            jsonElement = jsonResult[i] as! NSDictionary
            
            let id = (jsonElement["id"] as! String)
            let mood = (jsonElement["mood"] as! String)
            let category_name = (jsonElement["category_name"] as! String)
            let suggestion_name = (jsonElement["suggestion_name"] as! String)
            //let youtube_links = (jsonElement["youtube_links"] as! //String)
            let suggestion = SuggestionModel(id:id, mood:mood, category_name:category_name, suggestion_name:suggestion_name) //youtube_links:youtube_links)
            
            suggestions.add(suggestion)
        }
        
        DispatchQueue.main.async(execute: { () -> Void in
            self.delegate.itemsDownloaded(items: suggestions)
        })
    }
}
