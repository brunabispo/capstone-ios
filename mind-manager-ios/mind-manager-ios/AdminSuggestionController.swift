//
//  AdminSuggestionController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 04/04/21.
//

import Foundation
import UIKit

class AdminSuggestionController: UIViewController, UITableViewDataSource, UITableViewDelegate, SuggestionReadModelProtocol  {
    //Properties
        
        var suggestionReadItems: NSArray = NSArray()
        var selectedStock : SuggestionModel = SuggestionModel(id:"id", mood:"mood", category_name:"category_name", suggestion_name:"suggestion_name") //youtube_links:"youtube_links")

    @IBOutlet weak var list: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //set delegates and initialize UserReadModel
            
            self.list.delegate = self
            self.list.dataSource = self
            
            let suggestionReadModel = SuggestionReadModel()
            suggestionReadModel.delegate = self
            suggestionReadModel.downloadItems()
        }
        func itemsDownloaded(items: NSArray) {
            
            suggestionReadItems = items
            self.list.reloadData()
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // Return the number of userRead items
            return suggestionReadItems.count
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // Retrieve cell
            let cellIdentifier: String = "BasicCell"
            let myCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)!
            // Get the stock to be shown
            let item: SuggestionModel = suggestionReadItems[indexPath.row] as! SuggestionModel
            // Configure our cell title made up of name and price
            print(item)
            myCell.textLabel!.text = String(describing: item)
            return myCell
            
        }
        
    }
