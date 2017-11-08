//
//  NumberTableViewCell.swift
//  TableViewTopSpace
//
//  Created by Vo Quang Tuyen on 11/8/17.
//  Copyright © 2017 Vo Quang Tuyen. All rights reserved.
//

import UIKit

class NumberTableViewCell: UITableViewCell {

  @IBOutlet weak var lblNumber: UILabel!
  
  
    override func awakeFromNib() {
        super.awakeFromNib()
      
    }

  func setNumber(number: Int) {
    lblNumber.text = "\(number) glasses of milk"
  }
    
}
