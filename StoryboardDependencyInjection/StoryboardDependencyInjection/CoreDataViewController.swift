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
        
//        createData()
        
        fetchData()
    }
    
    func createData() {
        let context = container.viewContext

        
        for i in 1...5 {
            let setting = Setting(context: context)
            
            setting.name = "Setting \(i)"
            setting.value = "Off"
            print("Creating: \(setting.name)")
//            context.insert(setting)
        }
        
        do {
            try context.save()
        } catch {
            print("Error: \(error)")
        }
    }
    
    func fetchData() {

        
        let context = container.viewContext
        let fetchRequest: NSFetchRequest = Setting.fetchRequest()
//        fetchRequest.predicate = NSPredicate(format: "name == %@", "Developer")
        fetchRequest.sortDescriptors = [NSSortDescriptor(keyPath: \Setting.name, ascending: true)]
        
        container.performBackgroundTask { (backgroundContext) in
            // todo
            // save
        }
        
        do {
            let settings = try context.fetch(fetchRequest)
            print("Settings: \(settings)")
            for setting in settings {
                print("Setting: \(setting.name)")
            }
            
        } catch {
            print("Error: \(error)")
        }
//        do {
//            let fetchedEmployees = try context.execute(request: fetchRequest) as! [Setting]
//        } catch {
//            fatalError("Failed to fetch employees: \(error)")
//        }
//
    }


}

