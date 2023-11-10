//
//  ViewController.swift
//  KitSwift
//
//  Created by Artem on 10.11.2023.
//

import SwiftUI
import UIKit

class ViewController: UIViewController {
    
    let awesome = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        view.addSubview(awesome)
        awesome.backgroundColor = .purple
        awesome.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
          awesome.centerXAnchor.constraint(equalTo: view.centerXAnchor),
          awesome.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
          awesome.widthAnchor.constraint(equalToConstant: 250),
          awesome.heightAnchor.constraint(equalToConstant: 250)
        ])
    }
}

struct KitCrash: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> some UIViewController {
        ViewController()
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {}
}

struct ViewController_Previews: PreviewProvider {
    static var previews: some View {
            KitCrash()
                .ignoresSafeArea()
    }
}

