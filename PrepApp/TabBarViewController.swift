//
//  TabBarViewController.swift
//  PrepApp
//
//  Created by Mathieu Vandeginste on 15/06/2016.
//  Copyright © 2016 PrepApp. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        for item in self.tabBar.items! as [UITabBarItem] {
            if let image = item.selectedImage {
                item.selectedImage = image.imageWithColor(Colors.prepapp).imageWithRenderingMode(.AlwaysOriginal)
            }
        }
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: Colors.prepapp], forState: .Selected)
    }

}
