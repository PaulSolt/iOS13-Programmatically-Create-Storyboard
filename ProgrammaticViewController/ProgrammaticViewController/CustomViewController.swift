//
//  CustomViewController.swift
//  ProgrammaticViewController
//
//  Created by Paul Solt on 1/26/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import UIKit

class CustomViewController: UIViewController {
    
    // Change to your controller or model objects
    var modelController: ModelController
    var name: String
    
    // Your custom init() can have any data inputs (dependencies) and needs to
    //  call init(nibName: bundle) at end
    init(modelController: ModelController) {
        self.modelController = modelController
        self.name = "CustomViewController"
        
        super.init(nibName: nil, bundle: nil)
    }
    
    // Using this you indicate that you don't support Storyboard initialization
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

