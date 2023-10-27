//
//  PostViewController.swift
//  Navigation
//
//  Created by mariya.k on 17.10.2023.
//

import UIKit

class PostViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        self.makeBarButtonItem()
    }
    private func makeBarButtonItem() {
        let button = UIBarButtonItem(title: "Info", style: .plain, target: self, action: #selector(tapedButton))
        navigationItem.rightBarButtonItem = button
    }
    @objc private func tapedButton(){
        let infoViewController = InfoViewController()
        present(infoViewController, animated: true)
    }
}
