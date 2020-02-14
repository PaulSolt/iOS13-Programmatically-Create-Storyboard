//
//  SceneDelegate.swift
//  StoryboardDependencyInjection
//
//  Created by Paul Solt on 1/26/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//

import UIKit
import CoreData

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    // TODO: Remove from Github Project (Separate project)
    // TODO: Pass the MOC, not the PersistentContainer? Dave Delong
    // TODO: Don't use Core Data in this sample project
    
    var window: UIWindow?

    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Model")
        container.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Unable to load persistent stores: \(error)")
            }
        }
        return container
    }()
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        // NOTE: You must delete the `Storyboard Name` row from your Info.plist
        // setting under the `Application Scene Manifest` or this code won't run

        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        let coreDataVC = storyboard.instantiateViewController(identifier: "CoreDataViewController", creator: { coder in
//            CoreDataViewController(coder: coder, container: self.persistentContainer)
//        })
        
        // Make the creation of the storyboard an implementation detail of
        // the View Controller 
        let coreDataVC = CoreDataViewController.make(with: persistentContainer)
            
        window.rootViewController = coreDataVC
        window.makeKeyAndVisible()
        self.window = window
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

