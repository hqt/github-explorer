//
//  MainViewController.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/22/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import UIKit


class MainViewController: UIViewController {
  
    @IBOutlet weak var tableView: UITableView!
  
    var mainContents = ["data1", "data2", "data3", "data4", "data5"]
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.registerCellNib(DataTableViewCell.self)
    }
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.setNavigationBarItem()
    
  }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension MainViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return DataTableViewCell.height()
  }
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let storyboard = UIStoryboard(name: "SubContentsViewController", bundle: nil)
    let subContentsVC = storyboard.instantiateViewController(withIdentifier: "SubContentsViewController")
        as! SubContentsViewController
    self.navigationController?.pushViewController(subContentsVC, animated: true)
  }
}

extension MainViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.mainContents.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCell(withIdentifier: DataTableViewCell.identifier)
      as! DataTableViewCell
    let data = DataTableViewCellData(imageUrl: "dummy", text: mainContents[indexPath.row])
    cell.setData(data)
    return cell
  }
}

extension MainViewController: SlideMenuControllerDelegate {
  func leftWillOpen() {
    print("SlideMenuControllerDelegate: leftWillOpen")
  }
  
  func leftDidOpen() {
    print("SlideMenuControllerDelegate: leftDidOpen")
  }
  
  func leftWillClose() {
    print("SlideMenuControllerDelegate: leftWillClose")
  }
  
  func leftDidClose() {
    print("SlideMenuControllerDelegate: leftDidClose")
  }
  
  func rightWillOpen() {
    print("SlideMenuControllerDelegate: rightWillOpen")
  }
  
  func rightDidOpen() {
    print("SlideMenuControllerDelegate: rightDidOpen")
  }
  
  func rightWillClose() {
    print("SlideMenuControllerDelegate: rightWillClose")
  }
  
  func rightDidClose() {
    print("SlideMenuControllerDelegate: rightDidClose")
  }
}
