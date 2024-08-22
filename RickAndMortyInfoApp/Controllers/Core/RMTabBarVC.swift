//
//  RMTabViewController.swift
//  RickAndMortyInfoApp
//
//  Created by Aman Gupta on 22/08/24.
//

import UIKit

class RMTabBarVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        
    }

    
    func setupTabs(){
        let locationsVC = RMLocationVC()
        let charactersVC = RMCharacterVC()
        let episodesVC = RMEpisodeVC()
        let settingsVC = RMSettingsVC()
        
        let nav1 = UINavigationController(rootViewController: locationsVC)
        let nav2 = UINavigationController(rootViewController: charactersVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        nav1.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Charachters", image: UIImage(systemName:"person.fill"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName:"tv"), tag:3)
        nav4.tabBarItem = UITabBarItem(title:"Settings",image:UIImage(systemName:"gear"),tag:4)
        
        for nav in [nav1, nav2, nav3, nav4]{
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1, nav2, nav3, nav4], animated: true)
        
        
    }
    

  

}
