//
//  ViewController.swift
//  TableViewTopSpace
//
//  Created by Vo Quang Tuyen on 11/8/17.
//  Copyright © 2017 Vo Quang Tuyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  // IBOutlets
  @IBOutlet weak var tableView: UITableView!
  
  
  // Properties
  fileprivate var listTab1 = [Int]()
  fileprivate var listTab2 = [Int]()
  fileprivate var isTab1Showing = true
  
  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.delegate = self
    tableView.dataSource = self
    
    tableView.register(UINib(nibName: "NumberTableViewCell", bundle: nil), forCellReuseIdentifier: "NumberTableViewCell")
    tableView.separatorColor = .clear
    
    listTab1 = [1, 2]
    listTab2 = [8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26]
    
    tableView.estimatedRowHeight = 100
    tableView.rowHeight = UITableViewAutomaticDimension
  }

  
  @IBAction func didTapTab1(_ sender: UIButton) {
    isTab1Showing = true
    tableView.reloadData()
  }
  
  @IBAction func didTapTab2(_ sender: UIButton) {
    isTab1Showing = false
    tableView.reloadData()
  }
}

extension ViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return UITableViewAutomaticDimension
  }
}

extension ViewController: UITableViewDataSource {
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    if isTab1Showing {
      return listTab1.count
    } else {
      return listTab2.count
    }
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "NumberTableViewCell", for: indexPath) as! NumberTableViewCell
    if isTab1Showing {
      cell.setNumber(number: listTab1[indexPath.row])
    } else {
      cell.setNumber(number: listTab2[indexPath.row])
    }
    return cell
  }
}

