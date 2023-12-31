//
//  ViewController.swift
//  dattebayo-ios
//
//  Created by Ricky Silitonga on 29/12/23.
//

import UIKit

/// Tab controller for the application
class NPTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTab()
        
    }
    
    private func setupTab() {
        let characterVC = NPCharacterViewController()
        let clanVC = NPClanViewController()
        let villageVC = NPVillageViewController()
        let teamVC = NPTeamViewController()
        
        // set the large title display mode for all of the view controller
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        clanVC.navigationItem.largeTitleDisplayMode = .automatic
        villageVC.navigationItem.largeTitleDisplayMode = .automatic
        teamVC.navigationItem.largeTitleDisplayMode = .automatic
        
        // wrap the view controller to UINavigationController
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: clanVC)
        let nav3 = UINavigationController(rootViewController: villageVC)
        let nav4 = UINavigationController(rootViewController: teamVC)
        
        // set the icons for all navigation item
        nav1.tabBarItem = UITabBarItem(
            title: "Characters",
            image: UIImage(systemName: "person"),
            tag: 1
        )
        nav2.tabBarItem = UITabBarItem(
            title: "Episodes",
            image: UIImage(systemName: "tv"),
            tag: 2
        )
        nav3.tabBarItem = UITabBarItem(
            title: "Locations",
            image: UIImage(systemName: "globe"),
            tag: 3
        )
        nav4.tabBarItem = UITabBarItem(
            title: "Settings",
            image: UIImage(systemName: "gear"),
            tag: 4
        )
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        // setup the view controllers
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
    }
}

