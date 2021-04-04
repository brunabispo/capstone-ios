//
//  AdminQuestionController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 04/04/21.
//

import Foundation
import UIKit

class AdminQuestionController: UIViewController, UITableViewDataSource, UITableViewDelegate, QuestionReadModelProtocol  {
    //Properties
        
        var questionReadItems: NSArray = NSArray()
        var selectedStock : QuestionModel = QuestionModel(id:"id", question_text:"question_text")

    @IBOutlet weak var list: UITableView!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //set delegates and initialize UserReadModel
            
            self.list.delegate = self
            self.list.dataSource = self
            
            let questionReadModel = QuestionReadModel()
            questionReadModel.delegate = self
            questionReadModel.downloadItems()
        }
        func itemsDownloaded(items: NSArray) {
            
            questionReadItems = items
            self.list.reloadData()
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            // Return the number of userRead items
            return questionReadItems.count
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            // Retrieve cell
            let cellIdentifier: String = "BasicCell"
            let myCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)!
            // Get the stock to be shown
            let item: QuestionModel = questionReadItems[indexPath.row] as! QuestionModel
            // Configure our cell title made up of name and price
            print(item)
            myCell.textLabel!.text = String(describing: item)
            return myCell
            
        }
        
    }
