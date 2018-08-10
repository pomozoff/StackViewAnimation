//
//  ViewController.swift
//  StackViewAnimation
//
//  Created by Anton Pomozov on 10/08/2018.
//  Copyright © 2018 Ooma Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stack: UIStackView!
    @IBOutlet var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

        buttons.forEach { $0.isHidden = true }
    }

    @IBAction func action(_ sender: UIButton) {
        UIView.animate(withDuration: 3.0,
                       delay: 0.5,
                       options: .curveEaseInOut,
                       animations:
            {
                self.buttons.forEach { $0.isHidden = !$0.isHidden }
                self.view.layoutIfNeeded()
            }, completion: nil)
    }

}

