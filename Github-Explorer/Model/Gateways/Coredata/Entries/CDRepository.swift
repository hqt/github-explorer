//
//  CDRepository.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/23/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import Foundation
import CoreData

class CDRepository: NSManagedObject {
  
  fileprivate static let ENTRY_NAME = "Repository"
  
  @NSManaged var id: NSNumber
  @NSManaged var name: String
  @NSManaged var ownerName: String
  @NSManaged var summary: String?
  @NSManaged var language: String?
  @NSManaged var openIssuesCount: NSNumber
  @NSManaged var starsCount: NSNumber
  @NSManaged var forksCount: NSNumber
  @NSManaged var url: String
  @NSManaged var user: CDUser
  
  init(repository: Repository, context: NSManagedObjectContext) {
    let entity = NSEntityDescription.entity(forEntityName: CDRepository.ENTRY_NAME, in: context)!
    super.init(entity: entity, insertInto: context)
    
    self.id = NSNumber(repository.id)
    self.name = repository.name
    self.ownerName = repository.ownerName
    self.summary = repository.summary
    self.starsCount = NSNumber(repository.starsCount)
    self.language = repository.language
    self.forksCount = NSNumber(repository.forksCount)
    self.openIssuesCount = NSNumber(repository.openIssuesCount)
    self.url = repository.url
  }
  
  override init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
    super.init(entity: entity, insertInto: context)
  }
}
