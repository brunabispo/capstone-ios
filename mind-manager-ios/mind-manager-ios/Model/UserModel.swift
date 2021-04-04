//
//  UserModel.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 04/04/21.
//

import Foundation

class UserModel: NSObject {
    
    //properties
    var id: String
    var role: String
    var user_name: String
    var first_name: String
    var password: String
    
    //constructor
    init(id:String, role:String, user_name:String, first_name:String, password:String) {
        self.id = id
        self.role = role
        self.user_name = user_name
        self.first_name = first_name
        self.password = password
    }
    
    //print String
    override var description: String {
        return "\(String(describing: role)), \(String(describing: user_name)), \(String(describing: first_name))"
    }
}
