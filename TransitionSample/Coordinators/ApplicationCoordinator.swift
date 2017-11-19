//
//  ApplicationCoordinator.swift
//  TransitionSample
//
//  Created by 加賀江 優幸 on 2017/11/19.
//  Copyright © 2017年 加賀江 優幸. All rights reserved.
//

import UIKit

final class ApplicationCoordinator: Coordinator {
    private var window: UIWindow
    private(set) var rootViewController: RootViewController = RootViewController.viewController(text: "Root")
    private(set) var tabBarController: UITabBarController = UITabBarController()
    private(set) lazy var tabBarCoordinator: RootTabBarCoordinator = RootTabBarCoordinator(tabBarController: tabBarController)
    
    init(window: UIWindow) {
        self.window = window
        
    }
    
    func start() {
        window.rootViewController = rootViewController
        rootViewController.embededViewController = tabBarController
        tabBarCoordinator.start()
        window.makeKeyAndVisible()
    }
}
