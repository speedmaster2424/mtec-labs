//
//  scoreBoardTableViewController.swift
//  scoreBoardProject
//
//  Created by speed Master on 10/19/21.
//

import UIKit

class scoreBoardTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clearsSelectionOnViewWillAppear = false

         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return players.count
    }

    @IBAction func editButtonPressed(_ sender: Any) {
        let playerEditing =  tableView.isEditing
        
        tableView.setEditing(!playerEditing, animated: true)
    }
    
    @IBSegueAction func addPlayer(_ coder: NSCoder) -> editMenuViewController? {
        return editMenuViewController(coder: coder)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}

