//
//  CachedFriend+CoreDataProperties.swift
//  APIChallenge
//
//  Created by Jorge Henrique on 18/06/23.
//
//

import Foundation
import CoreData


extension CachedFriend {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CachedFriend> {
        return NSFetchRequest<CachedFriend>(entityName: "CachedFriend")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: UUID?
    @NSManaged public var user: CachedUser?

    var wrappedName: String {
        name ?? "Unknown"
    }
}

extension CachedFriend : Identifiable {

}
