//
//  CDProfile.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/23/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import Foundation
import CoreData

class CDProfile: NSManagedObject {
  
  fileprivate static let ENTRY_NAME = "Profile"
  
  @NSManaged var id: NSNumber
  @NSManaged var name: String
  @NSManaged var username: String
  @NSManaged var location: String?
  @NSManaged var company: String?
  @NSManaged var bio: String?
  @NSManaged var creationDate: Date
  @NSManaged var avatarUrl: String?
  @NSManaged var user: CDUser
  
  init(profile: Profile, context: NSManagedObjectContext) {
    let entity = NSEntityDescription.entity(forEntityName: CDProfile.ENTRY_NAME, in: context)!
    super.init(entity: entity, insertInto: context)
    
    self.id = NSNumber(profile.id)
    self.name = profile.name
    self.username = profile.username
    self.location = profile.location
    self.company = profile.company
    self.bio = profile.bio
    self.creationDate = profile.creationDate as Date
    self.avatarUrl = profile.avatarUrl
  }
  
  override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
    super.init(entity: entity, insertInto: context)
  }
}
