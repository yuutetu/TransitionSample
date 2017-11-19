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
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let rootViewController = RootViewController.viewController(text: "Root")
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
}
