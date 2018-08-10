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
    @IBOutlet weak var stack: UIStackView!
    @IBOutlet weak var bottomStackConstraint: NSLayoutConstraint!

    var isShown = true {
        didSet {
            bottomStackConstraint.constant = isShown ? 0 : -stack.frame.height
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        isShown = false
    }

    @IBAction func action(_ sender: UIButton) {
        isShown = !isShown

        UIView.animate(withDuration: 1.0,
                       delay: 0.5,
                       options: .curveEaseInOut,
                       animations:
            {
                self.view.layoutIfNeeded()
            }, completion: nil)
    }

}
