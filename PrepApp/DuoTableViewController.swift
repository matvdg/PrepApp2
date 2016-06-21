//
//  DuoTableViewController.swift
//  PrepApp
//
//  Created by Mathieu Vandeginste on 15/06/2016.
//  Copyright © 2016 PrepApp. All rights reserved.
//

import UIKit

class DuoTableViewController: UITableViewController {

    let sections = [
        Section(name: "Défis en attente", image: UIImage(named: "pending")!),
        Section(name: "Défi à un ami", image: UIImage(named: "friends")!),
        Section(name: "Défi aléatoire", image: UIImage(named: "shuffle")!),
        Section(name: "Résultats", image: UIImage(named: "results")!) ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Duo"
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
