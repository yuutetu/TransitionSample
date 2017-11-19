//
//  RootViewController.swift
//  TransitionSample
//
//  Created by 加賀江 優幸 on 2017/11/19.
//  Copyright © 2017年 加賀江 優幸. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var embededContainerView: UIView!
    private var labelText: String?
    var embededViewController: UIViewController?
    
    static func viewController(text: String) -> RootViewController {
        let viewController = UIStoryboard(name: "RootViewController", bundle: nil).instantiateInitialViewController() as! RootViewController
        viewController.labelText = text
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelText
        setupEmbededViewController()
    }
    
    func setupEmbededViewController() {
        guard let embededContainerView = embededContainerView else {
            return
        }
        
        for subview in embededContainerView.subviews {
            subview.removeFromSuperview()
        }
        
        guard let embededViewController = embededViewController else {
            return
        }
        
        addChildViewController(embededViewController)
        embededContainerView.addSubview(embededViewController.view)
        embededContainerView.addConstraints([
            NSLayoutConstraint(
                item: embededViewController.view,
                attribute: .top,
                relatedBy: .equal,
                toItem: embededContainerView,
                attribute: .top,
                multiplier: 1.0,
                constant: 0
            ),
            NSLayoutConstraint(
                item: embededViewController.view,
                attribute: .bottom,
                relatedBy: .equal,
                toItem: embededContainerView,
                attribute: .bottom,
                multiplier: 1.0,
                constant: 0
            ),
            NSLayoutConstraint(
                item: embededViewController.view,
                attribute: .leading,
                relatedBy: .equal,
                toItem: embededContainerView,
                attribute: .leading,
                multiplier: 1.0,
                constant: 0
            ),
            NSLayoutConstraint(
                item: embededViewController.view,
                attribute: .trailing,
                relatedBy: .equal,
                toItem: embededContainerView,
                attribute: .trailing,
                multiplier: 1.0,
                constant: 0
            )
        ])
    }
}

