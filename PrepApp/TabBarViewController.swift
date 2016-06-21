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
        for index in 0..<self.tabBar.items!.count {
                switch index {
                case 0:
                    self.tabBar.items![0].selectedImage = UIImage(named: "homeSelected")!.imageWithColor(Colors.prepapp).imageWithRenderingMode(.AlwaysOriginal)
                case 1:
                    self.tabBar.items![1].selectedImage = UIImage(named: "trainingSelected")!.imageWithColor(Colors.prepapp).imageWithRenderingMode(.AlwaysOriginal)
                case 2:
                    self.tabBar.items![2].selectedImage = UIImage(named: "challengeSelected")!.imageWithColor(Colors.prepapp).imageWithRenderingMode(.AlwaysOriginal)
                case 3:
                    self.tabBar.items![3].selectedImage = UIImage(named: "duoSelected")!.imageWithColor(Colors.prepapp).imageWithRenderingMode(.AlwaysOriginal)
                default:
                    self.tabBar.items![4].selectedImage = UIImage(named: "otherSelected")!.imageWithColor(Colors.prepapp).imageWithRenderingMode(.AlwaysOriginal)
                }
        }
        UITabBarItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName: Colors.prepapp], forState: .Selected)
    }

}
