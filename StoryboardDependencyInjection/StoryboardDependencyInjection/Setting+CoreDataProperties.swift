//
//  Setting+CoreDataProperties.swift
//  StoryboardDependencyInjection
//
//  Created by Paul Solt on 1/26/20.
//  Copyright © 2020 Paul Solt. All rights reserved.
//
//

import Foundation
import CoreData


extension Setting {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Setting> {
        return NSFetchRequest<Setting>(entityName: "Setting")
    }

    @NSManaged public var name: String
    @NSManaged public var value: String
    @NSManaged public var count: Int64
    @NSManaged public var list: NSOrderedSet
    
//    public var

}

// MARK: Generated accessors for list
extension Setting {

    @objc(insertObject:inListAtIndex:)
    @NSManaged public func insertIntoList(_ value: Control, at idx: Int)

    @objc(removeObjectFromListAtIndex:)
    @NSManaged public func removeFromList(at idx: Int)

    @objc(insertList:atIndexes:)
    @NSManaged public func insertIntoList(_ values: [Control], at indexes: NSIndexSet)

    @objc(removeListAtIndexes:)
    @NSManaged public func removeFromList(at indexes: NSIndexSet)

    @objc(replaceObjectInListAtIndex:withObject:)
    @NSManaged public func replaceList(at idx: Int, with value: Control)

    @objc(replaceListAtIndexes:withList:)
    @NSManaged public func replaceList(at indexes: NSIndexSet, with values: [Control])

    @objc(addListObject:)
    @NSManaged public func addToList(_ value: Control)

    @objc(removeListObject:)
    @NSManaged public func removeFromList(_ value: Control)

    @objc(addList:)
    @NSManaged public func addToList(_ values: NSOrderedSet)

    @objc(removeList:)
    @NSManaged public func removeFromList(_ values: NSOrderedSet)

}
