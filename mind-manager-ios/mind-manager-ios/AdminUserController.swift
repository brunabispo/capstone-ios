//
//  AdminUserController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 04/04/21.
//

import Foundation
import UIKit

class AdminUserController: UIViewController, UITableViewDataSource, UITableViewDelegate, UserReadModelProtocol  {
    //Properties
        
        var userReadItems: NSArray = NSArray()
        var selectedStock : UserModel = UserModel(id:"id", role:"role", user_name:"user_name", first_name:"first_name", password:"password")

    @IBOutlet weak var list: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //set delegates and initialize UserReadModel
            
            self.list.delegate = self
            self.list.dataSource = self
            
            let userReadModel = UserReadModel()
            userReadModel.delegate = self
            userReadModel.downloadItems()
        }
        func itemsDownloaded(items: NSArray) {
            
            userReadItems = items
            self.list.reloadData()
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // Return the number of userRead items
            return userReadItems.count
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // Retrieve cell
            let cellIdentifier: String = "BasicCell"
            let myCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)!
            // Get the stock to be shown
            let item: UserModel = userReadItems[indexPath.row] as! UserModel
            // Configure our cell title made up of name and price
            print(item)
            myCell.textLabel!.text = String(describing: item)
            return myCell
            
        }
        
    }
