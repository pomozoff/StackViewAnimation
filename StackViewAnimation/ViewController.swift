//
//  ViewController.swift
//  StackViewAnimation
//
//  Created by Anton Pomozov on 10/08/2018.
//  Copyright © 2018 Ooma Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var zeroHeightConstraint: NSLayoutConstraint!

    @IBAction func action(_ sender: UIButton) {
        zeroHeightConstraint.isActive = !zeroHeightConstraint.isActive

        UIView.animate(withDuration: 1.0,
                       delay: 0.5,
                       options: .curveEaseInOut,
                       animations:
            {
                self.view.layoutIfNeeded()
            }, completion: nil)
    }

}
