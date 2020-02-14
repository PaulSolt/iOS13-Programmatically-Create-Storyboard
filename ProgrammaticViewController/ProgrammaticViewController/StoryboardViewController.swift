//
//  StoryboardViewController.swift
//  ProgrammaticViewController
//
//  Created by Paul Solt on 2/13/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import UIKit

class StoryboardViewController: UIViewController {

    var name: String
    
    @IBOutlet weak var titleLabel: UILabel!

    // Use dependency injection to pass data to this VC
    required init?(coder: NSCoder, name: String) {
        self.name = name
        print("StoryboardViewController: \(name)")
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Use custom init? with dependency injection")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        titleLabel.text = name
    }

}
