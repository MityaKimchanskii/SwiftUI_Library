//
//  ViewController.swift
//  AddViewControllerIntoSwiftUIProject
//
//  Created by Mitya Kim on 1/6/24.
//


import SwiftUI
import UIKit


class ViewController: UIViewController {
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "apple.logo")
       
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 250),
            imageView.heightAnchor.constraint(equalToConstant: 300)
        ])
    }
}

struct ViewContollerRepresentation: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        let vc = ViewController()
        return vc
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}

#if DEBUG
struct ViewControllerPreviews: PreviewProvider {
    static var previews: some View {
        ViewContollerRepresentation()
    }
}
#endif
