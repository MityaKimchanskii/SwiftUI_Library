//
//  ViewController.swift
//  HostingUIKitViewWithDataInSwiftUI
//
//  Created by Mitya Kim on 1/6/24.
//

import UIKit
import SwiftUI


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

struct ViewControllerRepresentation: UIViewControllerRepresentable {
    
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
        ViewControllerRepresentation()
    }
}
#endif
