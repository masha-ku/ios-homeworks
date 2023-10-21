//
//  FeedViewController.swift
//  Navigation
//
//  Created by mariya.k on 17.10.2023.
//

import UIKit

class FeedViewController: UIViewController {
    private let post = Post(title: "Privet")
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("To post", for: .normal)
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    @objc private func tapButton() {
        let postViewController = PostViewController()
        postViewController.title = self.post.title
        navigationController?.pushViewController(postViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .cyan
        self.layout()
    }
    private func layout() {
        view.addSubview(self.button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
