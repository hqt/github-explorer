//
//  User.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/23/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import Foundation

class User {
  
  var accessToken: String
  var profile: Profile?
  var repositories: [Repository]?
 
  init(json: [String : AnyObject]) {
    self.accessToken = json["access_token"] as! String
  }
  
  init(cdUser: CDUser) {
    self.accessToken = cdUser.accessToken
    self.profile = profile(cdProfile: cdUser.profile)
    self.repositories = [Repository]()
    let cdRepositories = cdUser.repositories.allObjects as! [CDRepository]
    for cdRepository in cdRepositories {
      self.repositories?.append(Repository(cdRepository: cdRepository))
    }
  }
  
}
