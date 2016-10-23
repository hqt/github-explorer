//
//  File.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/23/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import Foundation
import CoreData

class CDUser: NSManagedObject {
  
    fileprivate static let ENTRY_NAME = "User"
  
  @NSManaged var accessToken: String
  @NSManaged var profile: CDProfile
  @NSManaged var repositories: NSSet
  
  init(accessToken: String, context: NSManagedObjectContext) {
    let entity = NSEntityDescription.entity(forEntityName: CDUser.ENTRY_NAME, in: context)!
    super.init(entity: entity, insertInto: context)
    
    self.accessToken = accessToken
  }
  
  override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
    super.init(entity: entity, insertInto: context)
  }
}
