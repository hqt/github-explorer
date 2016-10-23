//
//  ExSlideViewController.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/22/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import UIKit

class ExSlideViewController: SlideMenuController {

  override func isTagetViewController() -> Bool {
    if let vc = UIApplication.topViewController() {
      if vc is MainViewController ||
        vc is SwiftViewController {
        return true
      }
    }
    return false
  }
  
  override func track(_ trackAction: TrackAction) {
    switch trackAction {
    case .leftTapOpen:
      print("TrackAction: left tap open.")
    case .leftTapClose:
      print("TrackAction: left tap close.")
    case .leftFlickOpen:
      print("TrackAction: left flick open.")
    case .leftFlickClose:
      print("TrackAction: left flick close.")
    case .rightTapOpen:
      print("TrackAction: right tap open.")
    case .rightTapClose:
      print("TrackAction: right tap close.")
    case .rightFlickOpen:
      print("TrackAction: right flick open.")
    case .rightFlickClose:
      print("TrackAction: right flick close.")
    }
  }
}
