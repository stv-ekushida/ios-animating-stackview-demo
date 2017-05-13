//
//  ViewController.swift
//  ios-animating-stackview-demo
//
//  Created by Kushida　Eiji on 2017/05/13.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var emojiView: [UIView]! {

        didSet {
            emojiView.forEach {
                $0.isHidden = true
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapMenu(_ sender: UIButton) {

        UIView.animate(withDuration: 0.3) {
            self.emojiView.forEach {
                $0.isHidden = !$0.isHidden
            }
        }
    }
}
