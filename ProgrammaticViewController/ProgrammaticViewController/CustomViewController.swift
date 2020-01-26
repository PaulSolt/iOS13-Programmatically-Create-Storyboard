//
//  CustomViewController.swift
//  ProgrammaticViewController
//
//  Created by Paul Solt on 1/26/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    var name: String
    
    init(name: String) {
        self.name = name
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Use custom init with dependency injection")
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .systemBlue

        label.text = name
        view.addSubview(label)

        view.addConstraints([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    /// MARK: Programmatic Views
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 30)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
}

