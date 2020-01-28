//
//  Control+CoreDataProperties.swift
//  StoryboardDependencyInjection
//
//  Created by Paul Solt on 1/26/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//
//

import Foundation
import CoreData


extension Control {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Control> {
        return NSFetchRequest<Control>(entityName: "Control")
    }

    @NSManaged public var on: Bool

}
