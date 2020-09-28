//
//  ViewController.swift
//  LabelPaddingExample
//
//  Created by John Codeos on 9/28/20.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // paddingLabelProgrammatically()
    }

    // Programmatically
    func paddingLabelProgrammatically() {
        let label = PaddingLabel()
        label.backgroundColor = .black
        label.textColor = .white
        label.font = .systemFont(ofSize: 26, weight: .semibold)
        label.text = "UILabel with Padding"
        self.view.addSubview(label)

        // Padding
        label.paddingLeft = 15
        label.paddingRight = 15
        label.paddingTop = 8
        label.paddingBottom = 8

        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.centerXAnchor)
        ])
    }
}
