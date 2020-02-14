//
//  Note+CoreDataProperties.swift
//  StoryboardDependencyInjection
//
//  Created by Paul Solt on 1/30/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var id: UUID
    @NSManaged public var title: String
    @NSManaged public var text: String
    @NSManaged public var rating: Int64
    @NSManaged public var date: Date
    @NSManaged public var recipe: Recipe

}
