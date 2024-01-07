//
//  ViewController.swift
//  AddSwiftUIToUIKit
//
//  Created by Mitya Kim on 1/6/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Play game!", for: .normal)
        button.layer.cornerRadius = 8
        button.clipsToBounds = true
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200)
        ])
        
        button.addTarget(self, action: #selector(buttonTapped), for: .primaryActionTriggered)
    }
    
    @objc private func buttonTapped() {
//        print("Hit Me Tapped!")
        let vc = UIHostingController(rootView: ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5))
        present(vc, animated: true)
    }
}

