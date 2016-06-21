//
//  OtherTableViewController.swift
//  PrepApp
//
//  Created by Mathieu Vandeginste on 15/06/2016.
//  Copyright © 2016 PrepApp. All rights reserved.
//

import UIKit

class OtherTableViewController: UITableViewController {
    
    let sections = [
        Section(name: "Classement", image: UIImage(named: "leaderboard")!),
        Section(name: "Marquages", image: UIImage(named: "marked")!),
        Section(name: "Actualités", image: UIImage(named: "newsfeed")!),
        Section(name: "Feed-back", image: UIImage(named: "feedback")!),
        Section(name: "Aide", image: UIImage(named: "help")!),
        Section(name: "Réglages", image: UIImage(named: "settings")!),
        Section(name: "Se déconnecter", image: UIImage(named: "logout")!) ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.tintColor = Colors.prepapp
        self.tableView.contentInset = UIEdgeInsetsMake(20.0, 0.0, 0.0, 0.0);
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
