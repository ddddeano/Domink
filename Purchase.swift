//
//  Purchase+CoreDataProperties.swift
//  IngredientManager2
//
//  Created by Dominick Vaughn on 12/23/20.
//
//

import Foundation
import CoreData

@objc(Purchase)
public class Purchase: NSManagedObject {

}

extension Purchase {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Purchase> {
        return NSFetchRequest<Purchase>(entityName: "Purchase")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var isfave: Bool
    @NSManaged public var note: String?
    @NSManaged public var ingredient: Ingredient?
    @NSManaged public var supplier: Supplier?

}

extension Purchase : Identifiable {

}
