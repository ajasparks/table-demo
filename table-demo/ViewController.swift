//
//  ViewController.swift
//  table-demo
//
//  Created by Aja Sparks on 7/17/19.
//  Copyright © 2019 Aja Sparks. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  var listofNames = ["Isabelle", "Aja", "Diwash", "Christy", "Max"]
    var listofTasks = ["Physics Homework", "Exercise", "Folding laundry", "Robotics Club", "Attend CC party"]
    var listOfCats = ["Academic", "Health", "Other", "Social", "Event"]
    var listOfImages : [UIImage] = []

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellnew = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cellnew.textLabel?.lineBreakMode = NSLineBreakMode.byWordWrapping
        cellnew.textLabel?.numberOfLines = 2
        cellnew.textLabel?.text = "\(listofNames[indexPath.row]) completed \(listOfCats[indexPath.row]) task : \(listofTasks[indexPath.row])"
       // cellnew.imageView?.image = listOfImages[indexPath.row]
        return cellnew
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

