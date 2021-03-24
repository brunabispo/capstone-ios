//
//  MenuViewController.swift
//  mind-manager-ios
//
//  Created by Bruna Bispo on 18/03/21.
//

import Foundation
import UIKit

protocol MenuControllerDelegate {
    func didSelectMenuItem(named: String)
}

class MenuListController: UITableViewController {
    
//    // Items in the menu
//    var items = ["Login", "About"]
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//    }
    
    public var delegate: MenuControllerDelegate?
    
    private let items: [String]
    
    init(with items: [String]) {
        self.items = items
        super.init(nibName: nil, bundle: nil)
        // Change background color
//        tableView.backgroundColor = .darkGray
//        view.backgroundColor = .darkGray
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row]
        // Change background color
//        cell.textLabel?.textColor = .white
//        cell.backgroundColor = .clear
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // Close the menu and show a diffesrent controller
        let selectedItem = items[indexPath.row]
        delegate?.didSelectMenuItem(named: selectedItem)
    }
}
