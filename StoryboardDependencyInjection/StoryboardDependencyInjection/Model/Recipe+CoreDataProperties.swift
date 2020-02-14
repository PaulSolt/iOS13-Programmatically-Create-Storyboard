//
//  Recipe+CoreDataProperties.swift
//  StoryboardDependencyInjection
//
//  Created by Paul Solt on 1/30/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//
//

import Foundation
import CoreData


extension Recipe {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Recipe> {
        return NSFetchRequest<Recipe>(entityName: "Recipe")
    }

    @NSManaged public var id: UUID
    @NSManaged public var name: String
    @NSManaged public var coffee: Double
    @NSManaged public var water: Double
    @NSManaged public var ratio: Double

    @NSManaged public var bloom: Double
    @NSManaged public var pour: Double
    @NSManaged public var drain: Double
    @NSManaged public var directions: Set<Directions>
    @NSManaged public var revision: Set<Recipe>
    @NSManaged public var note: Note

}

// MARK: Generated accessors for directions
extension Recipe {

    @objc(addDirectionsObject:)
    @NSManaged public func addToDirections(_ value: Directions)

    @objc(removeDirectionsObject:)
    @NSManaged public func removeFromDirections(_ value: Directions)

    @objc(addDirections:)
    @NSManaged public func addToDirections(_ values: NSSet)

    @objc(removeDirections:)
    @NSManaged public func removeFromDirections(_ values: NSSet)

}

// MARK: Generated accessors for revision
extension Recipe {

    @objc(addRevisionObject:)
    @NSManaged public func addToRevision(_ value: Recipe)

    @objc(removeRevisionObject:)
    @NSManaged public func removeFromRevision(_ value: Recipe)

    @objc(addRevision:)
    @NSManaged public func addToRevision(_ values: NSSet)

    @objc(removeRevision:)
    @NSManaged public func removeFromRevision(_ values: NSSet)

}
