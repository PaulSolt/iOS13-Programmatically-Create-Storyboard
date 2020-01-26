//
//  ViewController.swift
//  StoryboardDependencyInjection
//
//  Created by Paul Solt on 1/26/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import UIKit
import CoreData

class CoreDataViewController: UIViewController {

    var container: NSPersistentContainer
    
    @IBOutlet weak var label: UILabel!
    
    init?(coder: NSCoder, container: NSPersistentContainer) {
        self.container = container
        print("Passed Core Data stack to View Controller")
        
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Use Core Data init(coder: container) instead")
    }
    
    static func make(with container: NSPersistentContainer) -> CoreDataViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let coreDataVC = storyboard.instantiateViewController(identifier: "CoreDataViewController", creator: { coder in
            CoreDataViewController(coder: coder, container: container)
        })
        return coreDataVC
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.textColor = .white
        view.backgroundColor = .systemRed
    }


}

