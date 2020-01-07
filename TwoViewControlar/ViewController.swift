//
//  ViewController.swift
//  TwoViewControlar
//
//  Created by Lab on 7/1/20.
//  Copyright © 2020 Lab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     @IBOutlet var table1: UITableView!
      @IBOutlet var table2: UITableView!
    
      let tabledata = [
          "A": ["apple", "Asd"],
          "B": ["Ball", "Banana"]
          
      ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

