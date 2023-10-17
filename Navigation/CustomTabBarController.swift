//
//  CustomTabBarController.swift
//  Navigation
//
//  Created by mariya.k on 17.10.2023.
//

import UIKit

class CustomTabBarController: UITabBarController {
    private let feedViewController = FeedViewController()
    private let profileViewController = ProfileViewController()

    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.setupTabbar()
        self.setupControllers()
    }
    private func setupControllers(){
        let feedNavigationController = UINavigationController(rootViewController: feedViewController)
        let profileNavidationController = UINavigationController(rootViewController: profileViewController)
        viewControllers = [feedNavigationController, profileNavidationController]
    }
    private func setupTabbar() {
        feedViewController.tabBarItem.image = UIImage(systemName: "list.star")
        profileViewController.tabBarItem.image = UIImage(systemName: "faceid")
    }
}
