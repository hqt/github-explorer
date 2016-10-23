//
//  UIViewController.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/22/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import UIKit


extension UIViewController {
  
  func setNavigationBarItem() {
    self.addLeftBarButtonWithImage(UIImage(named: "ic_menu_black_24dp")!)
    self.addRightBarButtonWithImage(UIImage(named: "ic_notifications_black_24dp")!)
    self.slideMenuController()?.removeLeftGestures()
    self.slideMenuController()?.removeRightGestures()
    self.slideMenuController()?.addLeftGestures()
    self.slideMenuController()?.addRightGestures()
  }
  
  func removeNavigationBar() {
    self.navigationItem.leftBarButtonItem = nil
    self.navigationItem.rightBarButtonItem = nil
    self.slideMenuController()?.removeLeftGestures()
    self.slideMenuController()?.removeRightGestures()
  }
}
