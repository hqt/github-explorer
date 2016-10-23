//
//  LeftViewController.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/22/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import UIKit


enum LeftMenu: Int {
  case main = 0
  case swift
  case java
  case go
  case nonMenu
}

protocol LeftMenuProtocol: class {
  func changeViewController(_ menu: LeftMenu)
}

class LeftViewController: UIViewController, LeftMenuProtocol {
  
  @IBOutlet weak var tableView: UITableView!
  var menus = ["Main", "Swift"]
  var mainViewController: UIViewController!
  var swiftMenuController: UIViewController!
  
  var imageHeaderView: ImageHeaderView!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.separatorColor = UIColor(red: 224/255, green: 224/255, blue: 224/244, alpha: 1.0)
      
      let storyboard = UIStoryboard(name: "Main", bundle: nil)
      let swiftViewcontroller = storyboard.instantiateViewController(withIdentifier: "SwiftViewController") as! SwiftViewController
      
      self.tableView.registerCellClass(BaseTableViewCell.self)
      
      self.imageHeaderView = ImageHeaderView.loadNib()
      self.view.addSubview(self.imageHeaderView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    self.imageHeaderView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: 160)
    self.view.layoutIfNeeded()
  }
  
  func changeViewController(_ menu: LeftMenu) {
    switch menu {
    case .main:
      self.slideMenuController()?.changeMainViewController(self.mainViewController, close: true)
    case .swift:
      self.slideMenuController()?.changeMainViewController(self.swiftMenuController, close: true)
    default:
      self.slideMenuController()?.changeMainViewController(self.mainViewController, close: true)
    }
  }
}

extension LeftViewController : UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    if let menu = LeftMenu(rawValue: indexPath.row) {
      switch menu {
      case .main, .swift, .java, .go, .nonMenu:
        return BaseTableViewCell.height()
      }
    }
    return 0
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if let menu = LeftMenu(rawValue: indexPath.row) {
      self.changeViewController(menu)
    }
  }
  
  func scrollViewDidScroll(_ scrollView: UIScrollView) {
    if self.tableView == scrollView {
      
    }
  }
}

extension LeftViewController : UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return menus.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    if let menu = LeftMenu(rawValue: indexPath.row) {
      switch menu {
      case .main, .swift, .java, .go, .nonMenu:
        let cell = BaseTableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: BaseTableViewCell.identifier)
        cell.setData(menus[indexPath.row])
        return cell
      }
    }
    return UITableViewCell()
  }
  
  
}
