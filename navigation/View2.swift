//
//  View2.swift
//  navigation
//
//  Created by Luccas Santana Marinho on 07/04/22.
//

import UIKit

class View2: UIViewController {

    private lazy var button: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Clique aqui", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .systemPink
        button.addTarget(self, action: #selector(returnButton), for: .touchUpInside)
        return button
    }()
    
    func insertViews() {
        self.view.addSubview(button)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPurple
        insertViews()
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 100),
            button.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    @objc func returnButton() {
        self.dismiss(animated: true, completion: nil)
    }
}
