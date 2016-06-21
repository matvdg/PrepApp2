//
//  TrainingTableViewController.swift
//  PrepApp
//
//  Created by Mathieu Vandeginste on 15/06/2016.
//  Copyright © 2016 PrepApp. All rights reserved.
//

import UIKit

class TrainingTableViewController: UITableViewController {

    let sections = [
        Section(name: "Maths", image: UIImage(named: "maths")!),
        Section(name: "Biologie", image: UIImage(named: "bio")!),
        Section(name: "Chimie", image: UIImage(named: "che")!),
        Section(name: "Physique", image: UIImage(named: "phy")!) ]
    
    override func viewDidLoad() {
        self.title = "Matières"
        super.viewDidLoad()
        self.view.tintColor = Colors.prepapp
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = sections[indexPath.row].name
        cell.imageView?.image = sections[indexPath.row].image
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01
    }

    

}
