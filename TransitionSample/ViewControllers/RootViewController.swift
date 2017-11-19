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
    private var labelText: String?
    
    static func viewController(text: String) -> RootViewController {
        let viewController = UIStoryboard(name: "RootViewController", bundle: nil).instantiateInitialViewController() as! RootViewController
        viewController.labelText = text
        return viewController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = labelText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

