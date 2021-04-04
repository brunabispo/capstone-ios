//
//  UserReadModel.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 04/04/21.
//

import Foundation

protocol UserReadModelProtocol: class {
    func itemsDownloaded(items: NSArray)
}

class UserReadModel: NSObject, URLSessionDataDelegate {
    
    weak var delegate: UserReadModelProtocol!
    let urlPath = "http://143.110.223.72/service_users.php"
    
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
        let users = NSMutableArray()
        
        for i in 0 ..< jsonResult.count
        {
            jsonElement = jsonResult[i] as! NSDictionary

            let id = (jsonElement["id"] as! String)
            let role = (jsonElement["role"] as! String)
            let user_name = (jsonElement["user_name"] as! String)
            let first_name = (jsonElement["first_name"] as! String)
            let password = (jsonElement["password"] as! String)
            let user = UserModel(id:id, role:role, user_name:user_name, first_name:first_name, password:password)

            users.add(user)
        }
        
        DispatchQueue.main.async(execute: { () -> Void in
            self.delegate.itemsDownloaded(items: users)
        })
    }
}
