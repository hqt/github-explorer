//
//  DataTableViewCell.swift
//  Github-Explorer
//
//  Created by Loc Nguyen on 10/22/16.
//  Copyright © 2016 Loc Nguyen. All rights reserved.
//

import UIKit

struct DataTableViewCellData  {
  
  var imageUrl: String
  var text: String
  
  init(imageUrl: String, text: String) {
    self.imageUrl = imageUrl
    self.text = text
  }
}

class DataTableViewCell: BaseTableViewCell {

  @IBOutlet weak var dataImage: UIImageView!
  @IBOutlet weak var dataText: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      //self.dataText.font = UIFont.italicSystemFont(ofSize: 16)
      //self.dataText.textColor = UIColor(hex: "9E9E9E")
    }
  
  override class func height() -> CGFloat {
    return 80
  }
  
  override func setData(_ data: Any?) {
    if let data = data as? DataTableViewCellData {
      //self.dataImage.setRandomDownloadImage(80, height: 80)
      //self.dataText.text = data.text
    }
  }
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
