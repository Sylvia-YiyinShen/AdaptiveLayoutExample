//
//  ViewController.swift
//  AdaptiveLayout
//
//  Created by Yiyin Shen on 22/5/19.
//  Copyright © 2019 Sylvia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dynamicWidth: NSLayoutConstraint!

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }

    private func configureViews() {
        if traitCollection.horizontalSizeClass == .compact {
            // 20: left/right margin
            dynamicWidth.constant = UIScreen.main.bounds.width - 2 * 20
        } else {
            dynamicWidth.constant = 300
        }
    }
}

