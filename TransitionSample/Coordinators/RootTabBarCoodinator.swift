//
//  RootTabBarCoodinator.swift
//  TransitionSample
//
//  Created by 加賀江 優幸 on 2017/11/19.
//  Copyright © 2017年 加賀江 優幸. All rights reserved.
//

import UIKit

class RootTabBarCoordinator: Coordinator {
    let tabBarController: UITabBarController
    private(set) var aViewController: RootViewController = RootViewController.viewController(text: "A")
    private(set) var bViewController: RootViewController = RootViewController.viewController(text: "B")
    private(set) var cViewController: RootViewController = RootViewController.viewController(text: "C")
    
    init(tabBarController: UITabBarController) {
        self.tabBarController = tabBarController
        aViewController.tabBarItem = UITabBarItem(title: "A", image: nil, selectedImage: nil)
        bViewController.tabBarItem = UITabBarItem(title: "B", image: nil, selectedImage: nil)
        cViewController.tabBarItem = UITabBarItem(title: "C", image: nil, selectedImage: nil)
    }
    
    func start() {
        tabBarController.viewControllers = [aViewController, bViewController, cViewController]
    }
}
