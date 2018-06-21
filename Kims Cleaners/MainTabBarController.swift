//
//  MainTabBarController.swift
//  Kims Cleaners
//
//  Created by Kang Nam on 6/21/18.
//  Copyright © 2018 Kang Nam. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewControllers()
    }
    
    func setupViewControllers() {
        
        let controller: ViewController = ViewController()
        let navController: UINavigationController = templateNavController(unselectedImage: UIImage(), selectedImage: UIImage(), rootViewController: controller)
        
        viewControllers = [navController]
        
        guard let items = tabBar.items else { return }
        for item in items {
            item.imageInsets = UIEdgeInsetsMake(4, 0, -4, 0)
        }
    }
    
    fileprivate func templateNavController(unselectedImage: UIImage, selectedImage: UIImage, rootViewController: UIViewController = UIViewController()) -> UINavigationController {
        let viewController = rootViewController
        let navController = UINavigationController(rootViewController: viewController)
        navController.tabBarItem.image = unselectedImage
        navController.tabBarItem.selectedImage = selectedImage
        return navController
    }
    
}
