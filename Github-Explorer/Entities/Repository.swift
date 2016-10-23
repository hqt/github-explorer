//
//  Repository.swift
//  
//
//  Created by Loc Nguyen on 10/23/16.
//
//

import Foundation

class Repository {
 
  var id: Int
  var name: String
  var ownerName: String
  var summary: String?
  var language: String?
  var openIssuesCount: Int
  var starsCount: Int
  var forksCount: Int
  var user: User?
  var url: String
  var commits: [Commit]?
  
  init(json: [String: AnyObject]) {
    self.id = json["id"] as! Int
    self.name = json["name"] as! String
    self.ownerName = (json["owner"] as! [String: AnyObject])["login"] as! String
    self.summary = json["description"] as? String
    self.starsCount = json["stargazers_count"] as! Int
    self.language = json["language"] as? String
    self.forksCount = json["forks_count"] as! Int
    self.openIssuesCount = json["open_issues_count"] as! Int
    self.url = json["html_url"] as! String
  }
  
  init(cdRepository: CDRepository) {
    self.id = cdRepository.id as Int
    self.name = cdRepository.name
    self.ownerName = cdRepository.ownerName
    self.summary = cdRepository.summary
    self.starsCount = cdRepository.starsCount as Int
    self.language = cdRepository.language
    self.forksCount = cdRepository.forksCount as Int
    self.openIssuesCount = cdRepository.openIssuesCount as Int
    self.url = cdRepository.url as String
  }
}
