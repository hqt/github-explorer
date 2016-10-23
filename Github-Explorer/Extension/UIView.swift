//
//  UIView.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/22/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import UIKit

extension UIView {
  class func loadNib<T: UIView>(_ viewType: T.Type) -> T {
    let className = String.className(viewType)
    return Bundle(for: viewType).loadNibNamed(className, owner: nil, options: nil)!.first as! T
  }
  
  class func loadNib() -> Self {
    return loadNib(self)
  }
}
