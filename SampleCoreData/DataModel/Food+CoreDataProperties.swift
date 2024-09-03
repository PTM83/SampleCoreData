//
//  Food+CoreDataProperties.swift
//  SampleCoreData
//
//  Created by Pablo Andrés Torres Montes on 03-09-24.
//
//

import Foundation
import CoreData


extension Food {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Food> {
        return NSFetchRequest<Food>(entityName: "Food")
    }

    @NSManaged public var calories: Double
    @NSManaged public var date: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var name: String?

}

extension Food : Identifiable {

}
