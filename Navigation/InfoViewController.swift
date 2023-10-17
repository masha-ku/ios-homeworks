//
//  InfoViewController.swift
//  Navigation
//
//  Created by mariya.k on 17.10.2023.
//

import UIKit

class InfoViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .black
        button.setTitle("Gotovo", for: .normal)
        button.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        self.layout()

    }
    @objc private func tapButton(){
        let alert = UIAlertController(title: "Vse gotovo!", message: "Vash kod gotov", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            print("Vse norm")
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive)
        { _ in
            print("Cancel")
        }
        
        alert.addAction(cancelAction)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    private func layout() {
        view.addSubview(self.button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}
