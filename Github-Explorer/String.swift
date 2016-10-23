//
//  String.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/22/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import Foundation

extension String {
  
  var length: Int {
    return self.characters.count
  }
  
  func substring(_ from: Int) -> String {
    return self.substring(from: self.characters.index(self.startIndex, offsetBy: from))
  }
  
  static func className(_ aClass: AnyClass) -> String {
    return NSStringFromClass(aClass).components(separatedBy: ".").last!
  }
}
