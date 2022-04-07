//
//  ViewController.swift
//  navigation
//
//  Created by Luccas Santana Marinho on 07/04/22.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Clique aqui", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.addTarget(self, action: #selector(navigationV2), for: .touchUpInside)
        return button
    }()
    
    func insertViews() {
        self.view.addSubview(button)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
        insertViews()
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc func navigationV2() {
        let vc = View2()
        vc.modalTransitionStyle = .flipHorizontal
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
